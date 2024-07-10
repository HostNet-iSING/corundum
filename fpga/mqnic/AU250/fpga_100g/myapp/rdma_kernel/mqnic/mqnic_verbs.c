#include "mqnic_verbs.h"
#include <linux/vmalloc.h>
#include <linux/mm.h>
#include <linux/errno.h>
#include <rdma/uverbs_ioctl.h>
#define UVERBS_MODULE_NAME ainic_ib
#include <rdma/uverbs_named_ioctl.h>

int ainic_create_cq(struct ib_cq *ibcq, const struct ib_cq_init_attr *attr,
		  struct ib_udata *udata)
{
	struct ainic_cq *cq;
	cq = kmalloc(sizeof(*cq), GFP_KERNEL);
	return 0;
}

int ainic_destroy_cq(struct ib_cq *ibcq, struct ib_udata *udata)
{
	struct ainic_cq *cq = container_of(ibcq, struct ainic_cq, ibcq);
	kfree(cq);
    return 0;
}


void ainic_mmap_release(struct kref *ref)
{
	struct mqnic_mmap_info *ip = container_of(ref,
					struct mqnic_mmap_info, ref);
	struct mqnic_rdma *mqnic_rdma = container_of(ip->context->device, struct mqnic_rdma, ibdev);

	spin_lock_bh(&mqnic_rdma->pending_lock);

	if (!list_empty(&ip->pending_mmaps))
		list_del(&ip->pending_mmaps);

	spin_unlock_bh(&mqnic_rdma->pending_lock);

	vfree(ip->obj);		/* buf */
	kfree(ip);
}

/*
 * open and close keep track of how many times the memory region is mapped,
 * to avoid releasing it.
 */
static void mqnic_vma_open(struct vm_area_struct *vma)
{
	struct mqnic_mmap_info *ip = vma->vm_private_data;

	kref_get(&ip->ref);
}

static void mqnic_vma_close(struct vm_area_struct *vma)
{
	struct mqnic_mmap_info *ip = vma->vm_private_data;

	kref_put(&ip->ref, ainic_mmap_release);
}

static const struct vm_operations_struct mqnic_vm_ops = {
	.open = mqnic_vma_open,
	.close = mqnic_vma_close,
};

/**
 * ainic_mmap - create a new mmap region
 * @context: the IB user context of the process making the mmap() call
 * @vma: the VMA to be initialized
 * Return zero if the mmap is OK. Otherwise, return an errno.
 */
int ainic_mmap(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	struct mqnic_rdma *mqnic_rdma = container_of (context->device, struct mqnic_rdma, ibdev);
	unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
	unsigned long size = vma->vm_end - vma->vm_start;
	struct mqnic_mmap_info *ip, *pp;
	int ret;

	/*
	 * Search the device's list of objects waiting for a mmap call.
	 * Normally, this list is very short since a call to create a
	 * CQ, QP, or SRQ is soon followed by a call to mmap().
	 */
	spin_lock_bh(&mqnic_rdma->pending_lock);
	list_for_each_entry_safe(ip, pp, &mqnic_rdma->pending_mmaps, pending_mmaps) {
		if (context != ip->context || (__u64)offset != ip->info.offset)
			continue;

		/* Don't allow a mmap larger than the object. */
		if (size > ip->info.size) {
			spin_unlock_bh(&mqnic_rdma->pending_lock);
			ret = -EINVAL;
			goto done;
		}

		goto found_it;
	}
	spin_unlock_bh(&mqnic_rdma->pending_lock);
	ret = -EINVAL;
	goto done;

found_it:
	list_del_init(&ip->pending_mmaps);
	spin_unlock_bh(&mqnic_rdma->pending_lock);

	ret = remap_vmalloc_range(vma, ip->obj, 0);
	if (ret) {
		goto done;
	}

	vma->vm_ops = &mqnic_vm_ops;
	vma->vm_private_data = ip;
	mqnic_vma_open(vma);
done:
	return ret;
}

/*
 * Allocate information for mqnic_mmap
 */
struct mqnic_mmap_info *mqnic_create_mmap_info(struct mqnic_rdma *mqnic_rdma, u32 size,
					   struct ib_udata *udata, void *obj)
{
	struct mqnic_mmap_info *ip;

	if (!udata)
		return ERR_PTR(-EINVAL);

	ip = kmalloc(sizeof(*ip), GFP_KERNEL);
	if (!ip)
		return ERR_PTR(-ENOMEM);

	size = PAGE_ALIGN(size);

	spin_lock_bh(&mqnic_rdma->mmap_offset_lock);

	if (mqnic_rdma->mmap_offset == 0)
		mqnic_rdma->mmap_offset = ALIGN(PAGE_SIZE, SHMLBA);

	ip->info.offset = mqnic_rdma->mmap_offset;
	mqnic_rdma->mmap_offset += ALIGN(size, SHMLBA);

	spin_unlock_bh(&mqnic_rdma->mmap_offset_lock);

	INIT_LIST_HEAD(&ip->pending_mmaps);
	ip->info.size = size;
	ip->context =
		container_of(udata, struct uverbs_attr_bundle, driver_udata)
			->context;
	ip->obj = obj;
	kref_init(&ip->ref);

	return ip;
}


int do_mmap_info(struct mqnic_rdma *mqnic_rdma, struct mminfo __user *outbuf,
		 struct ib_udata *udata, u8 *buf,
		 size_t buf_size, struct mqnic_mmap_info **ip_p)
{
	int err;
	struct mqnic_mmap_info *ip = NULL;

	if (outbuf) {
		ip = mqnic_create_mmap_info(mqnic_rdma, buf_size, udata, buf);
		if (IS_ERR(ip)) {
			err = PTR_ERR(ip);
			goto err1;
		}

		if (copy_to_user(outbuf, &ip->info, sizeof(ip->info))) {
			err = -EFAULT;
			goto err2;
		}

		spin_lock_bh(&mqnic_rdma->pending_lock);
		list_add(&ip->pending_mmaps, &mqnic_rdma->pending_mmaps);
		spin_unlock_bh(&mqnic_rdma->pending_lock);
	}

	*ip_p = ip;

	return 0;

err2:
	kfree(ip);
err1:
	return err;
}


int ainic_create_qp(struct ib_qp *ibqp, struct ib_qp_init_attr *init_attr,
		  struct ib_udata *udata)
{
// create send queue, for now, we only use sq
    struct ainic_qp *qp = container_of(ibqp, struct ainic_qp, ibqp);
	struct ainic_create_qp_resp __user *uresp = NULL;
    int ret;
    struct mqnic_rdma *mqnic_rdma = container_of(ibqp->device, struct mqnic_rdma, ibdev);
    struct mqnic_dev *mqnic_dev = mqnic_rdma->mqnic_dev;
	struct mqnic_if  *interface = mqnic_dev->interface[0];
	struct net_device *ndev = interface->ndev[0];
	struct mqnic_priv *priv = netdev_priv(ndev);
    struct mqnic_ring *q;
	u32 desc_block_size = min_t(u32, priv->interface->max_desc_block_size, 4);
	q = mqnic_create_tx_ring(interface);
	if (IS_ERR_OR_NULL(q)) {
		ret = PTR_ERR(q);
	}
	q->tx_queue = netdev_get_tx_queue(ndev, 1);
	ret = mqnic_open_tx_ring(q, priv, NULL, priv->tx_ring_size, desc_block_size);
	if (ret) {
		mqnic_destroy_tx_ring(q);
		return -1;
	}
	down_write(&priv->txq_table_sem);
	ret = radix_tree_insert(&priv->txq_table, 1, q);
	up_write(&priv->txq_table_sem);
	if (ret) {
		mqnic_destroy_tx_ring(q);
		return -1;
	}
	qp->sq.queue = q;
        int err = do_mmap_info(mqnic_rdma, &uresp->sq_mi, udata,
			   qp->sq.queue->buf, qp->sq.queue->buf_size,
			   &qp->sq.ip);
	if (err) {
		return -1;
	}
        err = do_mmap_info(mqnic_rdma, &uresp->send_reg_mmap, udata,
			   qp->sq.queue->hw_addr, sizeof(uint32_t),
			   &qp->sq.sq_reg_desc);
	if (err) {
		return -1;
	}
	mqnic_enable_tx_ring(q);
	return 0;
}

int ainic_destroy_qp(struct ib_qp *ibqp, struct ib_udata *udata)
{
  //  mqnic_destroy_tx_ring(q);
  struct ainic_qp *qp = container_of(ibqp, struct ainic_qp, ibqp);
  mqnic_destroy_tx_ring(qp->sq.queue);
  
  return 0;
}

//for now, poll cq is get qp/sq's consumer ptr
int ainic_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	struct ainic_cq *cq = container_of(ibcq, struct ainic_cq, ibcq);
	return 0;
}

static bool is_pmem_page(struct page *pg)
{
	unsigned long paddr = page_to_phys(pg);

	return REGION_INTERSECTS ==
	       region_intersects(paddr, PAGE_SIZE, IORESOURCE_MEM,
				 IORES_DESC_PERSISTENT_MEMORY);
}
static int ainic_mr_fill_pages_from_sgt(struct ainic_mr *mr, struct sg_table *sgt)
{
	XA_STATE(xas, &mr->page_list, 0);
	struct sg_page_iter sg_iter;
	struct page *page;
	bool persistent = !!(mr->access & 512);

	__sg_page_iter_start(&sg_iter, sgt->sgl, sgt->orig_nents, 0);
	if (!__sg_page_iter_next(&sg_iter))
		return 0;

	do {
		xas_lock(&xas);
		while (true) {
			page = sg_page_iter_page(&sg_iter);

			if (persistent && !is_pmem_page(page)) {
				xas_set_err(&xas, -EINVAL);
				break;
			}

			xas_store(&xas, page);
			if (xas_error(&xas))
				break;
			xas_next(&xas);
			if (!__sg_page_iter_next(&sg_iter))
				break;
		}
		xas_unlock(&xas);
	} while (xas_nomem(&xas, GFP_KERNEL));

	return xas_error(&xas);
}

struct ib_mr *ainic_reg_mr(struct ib_pd *ibpd, u64 start,
				     u64 length, u64 iova, int access,
				     struct ib_udata *udata)
{
	struct mqnic_rdma * mqnic_rdma = container_of(ibpd->device, struct mqnic_rdma, ibdev);
	struct ainic_mr *mr;
	int err;

	mr = kzalloc(sizeof(*mr), GFP_KERNEL);

	mr->ibmr.pd = ibpd;
	mr->ibmr.device = ibpd->device;

	struct ib_umem *umem;

//	mr->access = access;
	mr->ibmr.page_size = PAGE_SIZE;
//	mr->page_mask = PAGE_MASK;
//	mr->page_shift = PAGE_SHIFT;

	xa_init(&mr->page_list);

	umem = ib_umem_get(&mqnic_rdma->ibdev, start, length, access);

	err = ainic_mr_fill_pages_from_sgt(mr, &umem->sgt_append.sgt);

	mr->umem = umem;
	mr->ibmr.type = IB_MR_TYPE_USER;

	return &mr->ibmr;
}

int ainic_dereg_mr(struct ib_mr *ibmr, struct ib_udata *udata)
{
	struct mqnic_rdma *dev = container_of(ibmr->device, struct mqnic_rdma, ibdev);
	struct ainic_mr *mr = container_of(ibmr, struct ainic_mr, ibmr);
	
	ib_umem_release(mr->umem);
	kfree(mr);

	return 0;
}


/* uc */
static int ainic_alloc_ucontext(struct ib_ucontext *ibuc, struct ib_udata *udata)
{
	struct mqnic_rdma *ainic = container_of(ibuc->device, struct mqnic_rdma, ibdev);
	struct ainic_ucontext *uc = container_of(ibuc, struct ainic_ucontect, ibuc);
	int err = 0;
	return err;
}

static void ainic_dealloc_ucontext(struct ib_ucontext *ibuc)
{
	struct ainic_ucontext *uc = container_of(ibuc, struct ainic_ucontect, ibuc);
	int err;

	//err = ainic_cleanup(uc);
	//if (err)
	//	ainic_err_uc(uc, "cleanup failed, err = %d\n", err);
}

static int ainic_query_device(struct ib_device *ibdev,
			    struct ib_device_attr *attr,
			    struct ib_udata *udata)
{
	struct mqnic_rdma *ainic = container_of(ibqp->device, struct mqnic_rdma, ibdev);
	int err;

	if (udata->inlen || udata->outlen) {
		err = -EINVAL;
		goto err_out;
	}

	memcpy(attr, &ainic->attr, sizeof(*attr));

	return 0;

err_out:
	return err;
}

static int ainic_query_port(struct ib_device *ibdev,
			  u32 port, struct ib_port_attr *props)
{
	struct mqnic_rdma *dev = container_of(ibqp->device, struct mqnic_rdma, ibdev);

	props->lmc = 1;

	props->state = IB_PORT_ACTIVE;
	props->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
	props->gid_tbl_len = 1;
	props->pkey_tbl_len = 1;
	props->active_speed = IB_SPEED_EDR;
	props->active_width = IB_WIDTH_4X;
	props->max_mtu = ib_mtu_int_to_enum(dev->dev_attr.mtu);
	props->active_mtu = ib_mtu_int_to_enum(dev->dev_attr.mtu);
	props->max_msg_sz = dev->dev_attr.mtu;
	props->max_vl_num = 1;

	return 0;
}

int ainic_get_port_immutable(struct ib_device *ibdev, u32 port_num,
			   struct ib_port_immutable *immutable)
{
	struct ib_port_attr attr;
	int err;

	err = ib_query_port(ibdev, port_num, &attr);
	if (err) {
		return err;
	}

	immutable->pkey_tbl_len = attr.pkey_tbl_len;
	immutable->gid_tbl_len = attr.gid_tbl_len;

	return 0;
}

int ainic_query_gid(struct ib_device *ibdev, u32 port, int index,
		  union ib_gid *gid)
{
	struct mqnic_rdma *dev = container_of(ibqp->device, struct mqnic_rdma, ibdev);

	memcpy(gid->raw, dev->attr.addr, sizeof(dev->attr.addr));

	return 0;
}