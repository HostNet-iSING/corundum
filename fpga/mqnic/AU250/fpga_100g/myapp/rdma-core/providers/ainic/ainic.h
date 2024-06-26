#ifndef AINIC_H
#define AINIC_H

#include <infiniband/driver.h>
#include <stdint.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <util/mmio.h>
#include "ainic-abi.h"

struct ainic_device {
	struct verbs_device	ibv_dev;
	int	abi_version;
};

struct ainic_context {
	struct verbs_context	ibv_ctx;
};


/* common between cq and cq_ex */
struct ainic_cq {
	struct verbs_cq		vcq;
	struct mminfo		mmap_info;
	uint8_t *buf;
	size_t   size;
	pthread_spinlock_t	lock;

	/* new API support */
	struct ib_uverbs_wc	*wc;
	size_t			wc_size;
	uint32_t		cur_index;
};

struct ainic_wq {
	uint8_t *buf;  //ring buf
	uint32_t prod_ptr;
	uint32_t cons_ptr;
	pthread_spinlock_t	lock;
	unsigned int		max_sge;
	unsigned int		max_inline;
	unsigned int        size_mask;
	uint8_t *desc; //send/recv reg
};

struct ainic_qp {
	struct verbs_qp		vqp;
	struct mminfo		rq_mmap_info;
	struct ainic_wq		rq;
	struct mminfo		sq_mmap_info;
	struct ainic_wq		sq;

	/* new API support */
	uint32_t		cur_index;
	int			err;
};

// TX WQE结构，定义见文档https://pibu7mhlz5.feishu.cn/sheets/A2LhsSEHQhqm3BtyvaVc6SSDnqc?sheet=PWiw9p
struct ainic_io_tx_wqe {
    uint32_t length;
    uint32_t remote_ip;
    uint64_t local_addr;
    uint64_t remote_addr;
    uint64_t dst_qpn: 24;
    uint64_t src_port: 16;
    uint64_t priority: 3;
    uint64_t fence: 1;
    uint64_t task_id: 20;
};

static inline struct ainic_context *to_rctx(struct ibv_context *ibctx)
{
	return container_of(ibctx, struct ainic_context, ibv_ctx.context);
}

static inline struct ainic_device *to_rdev(struct ibv_device *ibdev)
{
	return container_of(ibdev, struct ainic_device, ibv_dev.device);
}

static inline struct ainic_cq *to_rcq(struct ibv_cq *ibcq)
{
	return container_of(ibcq, struct ainic_cq, vcq.cq);
}

static inline struct ainic_qp *to_rqp(struct ibv_qp *ibqp)
{
	return container_of(ibqp, struct ainic_qp, vqp.qp);
}

static inline enum ibv_qp_type qp_type(struct ainic_qp *qp)
{
	return qp->vqp.qp.qp_type;
}

#define MQNIC_QUEUE_CMD_SET_PROD_PTR  0x80800000
#define MQNIC_QUEUE_PTR_MASK     0xFFFF

static inline void ainic_tx_write_prod_ptr(struct ainic_wq *wq)
{
	mmio_write32(wq->desc,
            MQNIC_QUEUE_CMD_SET_PROD_PTR | (wq->prod_ptr & MQNIC_QUEUE_PTR_MASK));
}

static inline void ainic_tx_read_cons_ptr(struct ainic_wq *wq)
{
    // cons_ptr和prod_ptr共用一个32位寄存器
	wq->cons_ptr += ((mmio_read32(wq->desc) >> 16) - wq->cons_ptr) & MQNIC_QUEUE_PTR_MASK;
}

#endif /* AINIC_H */
