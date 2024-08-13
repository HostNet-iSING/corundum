#ifndef RDMA_USER_AINIC_H
#define RDMA_USER_AINIC_H

#include <linux/types.h>
#include <linux/socket.h>
#include <linux/in.h>
#include <linux/in6.h>

enum {
	ainic_NETWORK_TYPE_IPV4 = 1,
	ainic_NETWORK_TYPE_IPV6 = 2,
};

union ainic_gid {
	__u8	raw[16];
	struct {
		__be64	subnet_prefix;
		__be64	interface_id;
	} global;
};

struct ainic_global_route {
	union ainic_gid	dgid;
	__u32		flow_label;
	__u8		sgid_index;
	__u8		hop_limit;
	__u8		traffic_class;
};

struct ainic_av {
	__u8			port_num;
	/* From ainic_NETWORK_TYPE_* */
	__u8			network_type;
	__u8			dmac[6];
	struct ainic_global_route	grh;
	union {
		struct sockaddr_in	_sockaddr_in;
		struct sockaddr_in6	_sockaddr_in6;
	} sgid_addr, dgid_addr;
};

struct ainic_send_wr {
	__aligned_u64		wr_id;
	__u32			reserved;
	__u32			opcode;
	__u32			send_flags;
	union {
		__be32		imm_data;
		__u32		invalidate_rkey;
	} ex;
	union {
		struct {
			__aligned_u64 remote_addr;
			__u32	length;
			__u32	rkey;
			__u8	type;
			__u8	level;
		} flush;
		struct {
			__aligned_u64 remote_addr;
			__u32	rkey;
			__u32	reserved;
		} rdma;
		struct {
			__aligned_u64 remote_addr;
			__aligned_u64 compare_add;
			__aligned_u64 swap;
			__u32	rkey;
			__u32	reserved;
		} atomic;
		struct {
			__u32	remote_qpn;
			__u32	remote_qkey;
			__u16	pkey_index;
			__u16	reserved;
			__u32	ah_num;
			__u32	pad[4];
			struct ainic_av av;
		} ud;
		struct {
			__aligned_u64	addr;
			__aligned_u64	length;
			__u32		mr_lkey;
			__u32		mw_rkey;
			__u32		rkey;
			__u32		access;
		} mw;
		/* reg is only used by the kernel and is not part of the uapi */
#ifdef __KERNEL__
		struct {
			union {
				struct ib_mr *mr;
				__aligned_u64 reserved;
			};
			__u32	     key;
			__u32	     access;
		} reg;
#endif
	} wr;
};

struct ainic_sge {
	__aligned_u64 addr;
	__u32	length;
	__u32	lkey;
};

struct mminfo {
	__aligned_u64		offset;
	__u32			size;
	__u32			pad;
};

struct ainic_dma_info {
	__u32			length;
	__u32			resid;
	__u32			cur_sge;
	__u32			num_sge;
	__u32			sge_offset;
	__u32			reserved;
	union {
		__DECLARE_FLEX_ARRAY(__u8, inline_data);
		__DECLARE_FLEX_ARRAY(__u8, atomic_wr);
		__DECLARE_FLEX_ARRAY(struct ainic_sge, sge);
	};
};

struct ainic_send_wqe {
	struct ainic_send_wr	wr;
	__u32			status;
	__u32			state;
	__aligned_u64		iova;
	__u32			mask;
	__u32			first_psn;
	__u32			last_psn;
	__u32			ack_length;
	__u32			ssn;
	__u32			has_rd_atomic;
	struct ainic_dma_info	dma;
};

struct ainic_recv_wqe {
	__aligned_u64		wr_id;
	__u32			reserved;
	__u32			padding;
	struct ainic_dma_info	dma;
};

struct ainic_create_cq_resp {
	struct mminfo mi;
};

struct ainic_create_qp_resp {
	struct mminfo sq_mi;
	struct mminfo buf_mi;
	struct mminfo reg_bar;
	__u32 hw_offset;
	__u32 size_mask;
	__u32 stride;
	__u64 dma_addr;
	 __u32 offset_offset;
};
#endif /* RDMA_USER_AINIC_H */
