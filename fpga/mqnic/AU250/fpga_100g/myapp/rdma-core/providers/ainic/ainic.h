#ifndef AINIC_H
#define AINIC_H

#include <infiniband/driver.h>
#include <sys/socket.h>
#include <netinet/in.h>
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
	u8 *buf;
	pthread_spinlock_t	lock;

	/* new API support */
	struct ib_uverbs_wc	*wc;
	size_t			wc_size;
	uint32_t		cur_index;
};

struct ainic_wq {
	uint8_t *buf;  //ring buf
	u32 prod_ptr;
	u32 cons_ptr ____cacheline_aligned_in_smp;
	pthread_spinlock_t	lock;
	unsigned int		max_sge;
	unsigned int		max_inline;
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

#endif /* AINIC_H */
