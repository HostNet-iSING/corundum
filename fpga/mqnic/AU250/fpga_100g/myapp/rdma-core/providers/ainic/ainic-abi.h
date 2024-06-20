#ifndef AINIC_ABI_H
#define AINIC_ABI_H

#include <infiniband/kern-abi.h>
#include <rdma/ainic-abi.h>
#include <kernel-abi/ainic-abi.h>

DECLARE_DRV_CMD(uainic_create_cq, IB_USER_VERBS_CMD_CREATE_CQ,
		empty, ainic_create_cq_resp);
DECLARE_DRV_CMD(uainic_create_qp, IB_USER_VERBS_CMD_CREATE_QP,
		empty, ainic_create_qp_resp);

#endif /* AINIC_ABI_H */