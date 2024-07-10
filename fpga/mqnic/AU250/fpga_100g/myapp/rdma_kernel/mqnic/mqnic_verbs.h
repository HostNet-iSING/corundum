#ifndef MQNIC_VERBS_H
#define MQNIC_VERBS_H

#include <rdma/ib_verbs.h>
#include <rdma/ib_user_verbs.h>
#include <rdma/ib_umem.h>
#include <linux/uaccess.h>
#include <linux/compiler_types.h>
#include "mqnic.h"
#include "mqnic_hw.h"
#include "mqnic_ioctl.h"

struct mminfo {
	__aligned_u64		offset;
	__u32			size;
	__u32			pad;
};

struct mqnic_mmap_info {
	struct list_head	pending_mmaps;
	struct ib_ucontext	*context;
	struct kref		ref;
	void			*obj;

	struct mminfo info;
};
struct ainic_ucontext {
	struct ib_ucontext ibuc;
};

struct ainic_pd {
	struct ib_pd            ibpd;
};

struct ainic_mr {
	struct ib_mr ibmr;
	struct ib_umem *umem;
	int			access;
	struct xarray		page_list;
};

struct ainic_cq {
	struct ib_cq		ibcq;
	struct mqnic_cq      *queue;
	struct mqnic_ring    *cq;
};

struct ainic_sq {
	struct mqnic_ring	*queue;
	struct mqnic_mmap_info	*ip;
	struct mqnic_mmap_info	*sq_producer;
	struct mqnic_mmap_info	*sq_consumer;
	struct mqnic_mmap_info	*sq_reg_desc;
};

struct ainic_rq {
	struct mqnic_ring	*queue;
};


struct ainic_qp {
	struct ib_qp		ibqp;

	struct ainic_cq		*scq;
	struct ainic_cq		*rcq;

	struct ainic_sq		sq;
	struct ainic_rq		rq;
};

struct ainic_create_qp_resp {
	struct mminfo rq_mi;
	struct mminfo sq_mi;
	struct mminfo sq_consumer_mi;
	struct mminfo sq_producer_mi;
	struct mminfo send_reg_mmap;
};

int ainic_destroy_qp(struct ib_qp *ibqp, struct ib_udata *udata);
int ainic_create_qp(struct ib_qp *ibqp, struct ib_qp_init_attr *init_attr,
		  struct ib_udata *udata);
int ainic_destroy_cq(struct ib_cq *ibcq, struct ib_udata *udata);
int ainic_create_cq(struct ib_cq *ibcq, const struct ib_cq_init_attr *attr,
		  struct ib_udata *udata);
struct ib_mr *ainic_reg_mr(struct ib_pd *ibpd, u64 start,
				     u64 length, u64 iova, int access,
				     struct ib_udata *udata);
int ainic_dereg_mr(struct ib_mr *ibmr, struct ib_udata *udata);
int ainic_alloc_ucontext(struct ib_ucontext *ibucontext, struct ib_udata *udata);
void ainic_dealloc_ucontext(struct ib_ucontext *ibucontext);
int ainic_mmap(struct ib_ucontext *ibucontext,
	     struct vm_area_struct *vma);

#endif
