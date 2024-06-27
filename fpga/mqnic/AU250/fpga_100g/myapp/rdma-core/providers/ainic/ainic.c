#include <config.h>

#include <endian.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <pthread.h>
#include <netinet/in.h>
#include <sys/mman.h>
#include <errno.h>

#include <endian.h>
#include <pthread.h>
#include <stddef.h>

#include <infiniband/driver.h>
#include <infiniband/verbs.h>

#include <util/udma_barrier.h>
#include <util/mmio.h>

#include "ainic-abi.h"
#include "ainic.h"

static void ainic_free_context(struct ibv_context *ibctx);

static const struct verbs_match_ent ainic_table[] = {
	VERBS_DRIVER_ID(RDMA_DRIVER_AINIC),
	VERBS_PCI_MATCH(0x1234, 0x1001, NULL),
	{},
};

static struct ibv_mr *ainic_reg_mr(struct ibv_pd *pd, void *addr, size_t length,
				 uint64_t hca_va, int access)
{
	struct verbs_mr *vmr;
	struct ibv_reg_mr cmd;
	struct ib_uverbs_reg_mr_resp resp;
	int ret;

	vmr = calloc(1, sizeof(*vmr));
	if (!vmr)
		return NULL;

	ret = ibv_cmd_reg_mr(pd, addr, length, hca_va, access, vmr, &cmd,
			     sizeof(cmd), &resp, sizeof(resp));
	if (ret) {
		free(vmr);
		return NULL;
	}

	return &vmr->ibv_mr;
}

static int ainic_dereg_mr(struct verbs_mr *vmr)
{
	int ret;

	ret = ibv_cmd_dereg_mr(vmr);
	if (ret)
		return ret;

	free(vmr);
	return 0;
}


static int ainic_destroy_cq(struct ibv_cq *ibcq)
{
	struct ainic_cq *cq = to_rcq(ibcq);
	int ret;

	ret = ibv_cmd_destroy_cq(ibcq);
	if (ret)
		return ret;

	if (cq->mmap_info.size)
		munmap(cq->buf, cq->mmap_info.size);
	free(cq);

	return 0;
}

static struct ibv_cq *ainic_create_cq(struct ibv_context *context, int cqe,
				    struct ibv_comp_channel *channel,
				    int comp_vector)
{
	struct ainic_cq *cq;
	struct uainic_create_cq_resp resp = {};
	int ret;

	cq = calloc(1, sizeof(*cq));
	if (!cq)
		return NULL;

	ret = ibv_cmd_create_cq(context, cqe, channel, comp_vector,
				&cq->vcq.cq, NULL, 0,
				&resp.ibv_resp, sizeof(resp));
	if (ret) {
		free(cq);
		return NULL;
	}

	cq->buf = mmap(NULL, resp.mi.size, PROT_READ | PROT_WRITE, MAP_SHARED,
			 context->cmd_fd, resp.mi.offset);
	if ((void *)cq->buf == MAP_FAILED) {
		ibv_cmd_destroy_cq(&cq->vcq.cq);
		free(cq);
		return NULL;
	}

	cq->wc_size = 1ULL << cq->size;

	if (cq->wc_size < sizeof(struct ib_uverbs_wc)) {
		ainic_destroy_cq(&cq->vcq.cq);
		return NULL;
	}

	cq->mmap_info = resp.mi;
	pthread_spin_init(&cq->lock, PTHREAD_PROCESS_PRIVATE);
    cq->last_cons_ptr = 0;
	return &cq->vcq.cq;
}

static int ainic_poll_cq(struct ibv_cq *ibcq, int ne, struct ibv_wc *wc)
{
	struct ainic_cq *cq = to_rcq(ibcq);
	cq->last_cons_ptr = cq->cons_ptr;
	ainic_tx_read_cons_ptr(cq->sq);
	cq->cons_ptr = cq->sq->cons_ptr;
	int nfinished =  cq->cons_ptr - cq->last_cons_ptr;
	return nfinished;
}

static int map_queue_pair(int cmd_fd, struct ainic_qp *qp,
			  struct ibv_qp_init_attr *attr,
			  struct ainic_create_qp_resp *resp)
{
	qp->sq.max_sge = attr->cap.max_send_sge;
	qp->sq.max_inline = attr->cap.max_inline_data;
	qp->sq.buf = mmap(NULL, resp->sq_mi.size, PROT_READ | PROT_WRITE,
			    MAP_SHARED,
			    cmd_fd, resp->sq_mi.offset);
	if ((void *)qp->sq.buf == MAP_FAILED) {
		return errno;
	}

	qp->sq_mmap_info = resp->sq_mi;
	pthread_spin_init(&qp->sq.lock, PTHREAD_PROCESS_PRIVATE);

	return 0;
}

static struct ibv_qp *ainic_create_qp(struct ibv_pd *ibpd,
				    struct ibv_qp_init_attr *attr)
{
	struct ibv_create_qp cmd = {};
	struct uainic_create_qp_resp resp = {};
	struct ainic_qp *qp;
	int ret;

	qp = calloc(1, sizeof(*qp));
	if (!qp)
		goto err;

	ret = ibv_cmd_create_qp(ibpd, &qp->vqp.qp, attr, &cmd, sizeof(cmd),
				&resp.ibv_resp, sizeof(resp));
	if (ret)
		goto err_free;

	ret = map_queue_pair(ibpd->context->cmd_fd, qp, attr,
			     &resp.drv_payload);

	if (ret)
		goto err_destroy;
    
	qp->sq.desc = mmap(NULL, resp.send_reg_mmap.size, PROT_WRITE,
			MAP_SHARED, qp->vqp.qp.context->cmd_fd,
			resp.send_reg_mmap.offset);
	
	return &qp->vqp.qp;
	//cq
    struct ainic_cq *cq = to_rcq(attr->send_cq);
	*cq->sq = qp->sq;
	ainic_tx_read_cons_ptr(&qp->sq);
    cq->cons_ptr = qp->sq.cons_ptr;
err_destroy:
	ibv_cmd_destroy_qp(&qp->vqp.qp);
err_free:
	free(qp);
err:
	return NULL;
}

static int ainic_destroy_qp(struct ibv_qp *ibqp)
{
	int ret;
	struct ainic_qp *qp = to_rqp(ibqp);

	ret = ibv_cmd_destroy_qp(ibqp);
	if (!ret) {
		if (qp->rq_mmap_info.size)
			munmap(qp->rq.buf, qp->rq_mmap_info.size);
		if (qp->sq_mmap_info.size)
			munmap(qp->sq.buf, qp->sq_mmap_info.size);

		free(qp);
	}

	return ret;
}

static int ainic_post_send(struct ibv_qp *ibvqp, struct ibv_send_wr *wr,
		  struct ibv_send_wr **bad)
{
	struct ainic_qp *qp = to_rqp(ibvqp);
	struct ainic_wq *wq = &qp->sq;
    struct ainic_io_tx_wqe tx_wqe;
	uint32_t sq_desc_offset;
	int err = 0;
	

	mmio_wc_spinlock(&wq->lock);
	while (wr) {
        // 暂时不管
		// err = efa_post_send_validate_wr(qp, wr);
		// if (err) {
		// 	*bad = wr;
		// 	goto ring_db;
		// }
		
        memset(&tx_wqe, 0, sizeof(tx_wqe));
        
        //TODO: wr.wr中采用哪个union成员，希望使用wr.wr.rdma
        //假设buffer物理连续，使用sgl首块地址作为buffer首地址
        tx_wqe.local_addr = wr->sg_list[0].addr;
        //理论上num_sge应该为1
        for (int i = 0; i < wr->num_sge; i++)
        {
            tx_wqe.length += wr->sg_list[i].length;
        }
        tx_wqe.dst_qpn = wr->wr.ud.remote_qpn;
        tx_wqe.src_port = 4791;
        //对端信息暂时不知道怎么填

        /* Copy descriptor */
		sq_desc_offset = (wq->prod_ptr & wq->size_mask) * sizeof(tx_wqe);
		mmio_memcpy_x64(wq->buf + sq_desc_offset, &tx_wqe,
				sizeof(tx_wqe));
        
        /* advance index and change phase */
		wq->prod_ptr++;
        mmio_flush_writes();
        ainic_tx_write_prod_ptr(wq);
        mmio_wc_start();
		wr = wr->next;
	}

	/*
	 * Not using mmio_wc_spinunlock as the doorbell write should be done
	 * inside the lock.
	 */
	pthread_spin_unlock(&wq->lock);
	return err;
}

static int ainic_post_recv(struct ibv_qp *ibvqp, struct ibv_recv_wr *wr,
		  struct ibv_recv_wr **bad)
{
    //TODO
    return 0;
}

static const struct verbs_context_ops ainic_ctx_ops = {
	.reg_mr = ainic_reg_mr,
	.dereg_mr = ainic_dereg_mr,
	.create_cq = ainic_create_cq,
	.poll_cq = ainic_poll_cq,
	.destroy_cq = ainic_destroy_cq,
	.create_qp = ainic_create_qp,
	.destroy_qp = ainic_destroy_qp,
	.post_send = ainic_post_send,
	.post_recv = ainic_post_recv,
};

static struct verbs_context *ainic_alloc_context(struct ibv_device *ibdev,
					       int cmd_fd,
					       void *private_data)
{
	struct ainic_context *context;
	struct ibv_get_context cmd;
	struct ib_uverbs_get_context_resp resp;

	context = verbs_init_and_alloc_context(ibdev, cmd_fd, context, ibv_ctx,
					       RDMA_DRIVER_AINIC);
	if (!context)
		return NULL;

	if (ibv_cmd_get_context(&context->ibv_ctx, &cmd, sizeof(cmd),
				&resp, sizeof(resp)))
		goto out;

	verbs_set_ops(&context->ibv_ctx, &ainic_ctx_ops);

	return &context->ibv_ctx;

out:
	verbs_uninit_context(&context->ibv_ctx);
	free(context);
	return NULL;
}

static void ainic_free_context(struct ibv_context *ibctx)
{
	struct ainic_context *context = to_rctx(ibctx);

	verbs_uninit_context(&context->ibv_ctx);
	free(context);
}

static void ainic_uninit_device(struct verbs_device *verbs_device)
{
	struct ainic_device *dev = to_rdev(&verbs_device->device);

	free(dev);
}

static struct verbs_device *ainic_device_alloc(struct verbs_sysfs_dev *sysfs_dev)
{
	struct ainic_device *dev;

	dev = calloc(1, sizeof(*dev));
	if (!dev)
		return NULL;

	dev->abi_version = sysfs_dev->abi_ver;

	return &dev->ibv_dev;
}

static const struct verbs_device_ops ainic_dev_ops = {
	.name = "ainic",
	/*
	 * For 64 bit machines ABI version 1 and 2 are the same. Otherwise 32
	 * bit machines require ABI version 2 which guarentees the user and
	 * kernel use the same ABI.
	 */
	.match_table = ainic_table,
	.alloc_device = ainic_device_alloc,
	.uninit_device = ainic_uninit_device,
	.alloc_context = ainic_alloc_context,
};
PROVIDER_DRIVER(ainic, ainic_dev_ops);
