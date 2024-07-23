/* 
 * build: 
 * cc -o client client.c -lrdmacm -libverbs
 * 
 * usage: 
 * client <servername> <val1> <val2>
 *
 * connects to server, sends val1 via RDMA write and val2 via send, 
 * and receives val1+val2 back from the server. 
 */ 
#include "infiniband/verbs.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>

#include <rdma/rdma_cma.h>
enum   { 
        RESOLVE_TIMEOUT_MS        = 5000, 
}; 
struct pdata { 
        uint64_t	buf_va; 
        uint32_t	buf_rkey;
};

uint64_t htonll(uint64_t val) {
	    return (((uint64_t) htonl(val)) << 32) + htonl(val >> 32);
}

uint64_t ntohll(uint64_t val) {
    return (((uint64_t) ntohl(val)) << 32) + ntohl(val >> 32);
}

#define PFN_MASK_SIZE   8

uintptr_t
rte_mem_virt2phy(const void *virtaddr)
{
        int fd;
        uint64_t page, physaddr;
        unsigned long virt_pfn;
        int page_size;
        off_t offset;
 
 
        /* standard page size */
        page_size = getpagesize();
 
 
        fd = open("/proc/self/pagemap", O_RDONLY);
        if (fd < 0) { 
            return -1;
        }
 
 
        virt_pfn = (unsigned long)virtaddr / page_size;
        offset = sizeof(uint64_t) * virt_pfn;
        if (lseek(fd, offset, SEEK_SET) == (off_t) -1) {
            return -1;
        }
 
 
        if (read(fd, &page, PFN_MASK_SIZE) == -1)
        {
            return -1;
        }
        close(fd);
 
 
        /*
         * the pfn (page frame number) are bits 0-54 (see
         * pagemap.txt in linux Documentation)
         */
        if ((page & 0x7fffffffffffffULL) == 0)
                return -1;
 
 
        physaddr = ((page & 0x7fffffffffffffULL) * page_size)
                + ((unsigned long)virtaddr % page_size);
 
 
        return physaddr;
}

int main(int argc, char   *argv[ ]) 
{ 
       struct pdata									server_pdata; 
       struct rdma_event_channel			*cm_channel; 
       struct rdma_cm_id							*cm_id; 
       struct rdma_cm_event					*event;  
       struct rdma_conn_param				conn_param = { };  
       struct ibv_pd								*pd; 
       struct ibv_comp_channel				*comp_chan; 
       struct ibv_cq								*cq; 
       struct ibv_cq								*evt_cq; 
       struct ibv_mr								*mr; 
       struct ibv_qp_init_attr				qp_attr = { }; 
       struct ibv_sge								sge; 
       struct ibv_send_wr						send_wr = { }; 
       struct ibv_send_wr 						*bad_send_wr; 
       struct ibv_recv_wr						recv_wr = { }; 
       struct ibv_recv_wr						*bad_recv_wr; 
       struct ibv_wc								wc; 
       void													*cq_context; 
       struct addrinfo								*res, *t; 
       struct addrinfo								hints =   { 
       																			.ai_family    = AF_INET, 
       																			.ai_socktype  = SOCK_STREAM 
       														};  
			int													n; 
			uint32_t											*buf; 
			int													err; 
			/* Set up RDMA CM structures */ 
			cm_channel = rdma_create_event_channel(); 
			if (!cm_channel)  return 1; 
			err = rdma_create_id(cm_channel, &cm_id, NULL, RDMA_PS_TCP);
			if (err)
					return err;
			n = getaddrinfo(argv[1], "20079", &hints, &res);
			if (n < 0)
					return   1;
            
            printf("%d\n", n);

			/* Resolve server address and route */
			for (t = res; t; t = t->ai_next) {
					err = rdma_resolve_addr(cm_id, NULL, t->ai_addr, RESOLVE_TIMEOUT_MS);
					if (!err)
							break;
			}
			if (err)
            {
                printf("%d\n", err);
                return err;
            }

			err = rdma_get_cm_event(cm_channel, &event);
			if (err)
					return err;
			if (event->event != RDMA_CM_EVENT_ADDR_RESOLVED)
					return 1;
			rdma_ack_cm_event(event);
			err = rdma_resolve_route(cm_id, RESOLVE_TIMEOUT_MS);
			if (err)
					return err;
			err = rdma_get_cm_event(cm_channel, &event);
			if (err)
					return err;
			if (event->event != RDMA_CM_EVENT_ROUTE_RESOLVED)
					return 1;
			rdma_ack_cm_event(event);

			/* Create verbs objects now that we know which device to use */ 
			pd = ibv_alloc_pd(cm_id->verbs); 
			if (!pd) 
					return 1; 
			comp_chan = ibv_create_comp_channel(cm_id->verbs);              
			if (!comp_chan) 
					return 1; 
			cq = ibv_create_cq(cm_id->verbs, 2,NULL, comp_chan, 0); 
			if (!cq) 
					return 1; 
  
			if (ibv_req_notify_cq(cq,  0)) 
					return 1; 
            
            // 要不要页对齐?
			buf = calloc(2, sizeof (uint32_t)); 
			if (!buf) 
					return 1; 
			mr = ibv_reg_mr(pd, buf,2 * sizeof(uint32_t), IBV_ACCESS_LOCAL_WRITE); 
			if (!mr) 
					return 1; 
			qp_attr.cap.max_send_wr = 2; 
			qp_attr.cap.max_send_sge = 1;                                                                            
			qp_attr.cap.max_recv_wr = 1; 
			qp_attr.cap.max_recv_sge = 1; 
			qp_attr.send_cq            = cq;
			qp_attr.recv_cq            = cq;
			qp_attr.qp_type            = IBV_QPT_RC; 
			err = rdma_create_qp(cm_id, pd, &qp_attr);
			if (err)                           
					return err;
			conn_param.initiator_depth = 1;
			conn_param.retry_count = 7;
            conn_param.rnr_retry_count = 7;

            server_pdata.buf_va = htonll((uintptr_t) buf);
            server_pdata.buf_rkey = htonl(mr->rkey);
            conn_param.responder_resources = 1;
            conn_param.private_data          = &server_pdata;
            conn_param.private_data_len = sizeof(server_pdata);

/***************************************************************************************/

			/* Connect to server */
			err = rdma_connect(cm_id, &conn_param);
			if (err)
					return err;
			err = rdma_get_cm_event(cm_channel,&event);
			if (err)
					return err;
			if (event->event != RDMA_CM_EVENT_ESTABLISHED)
					return 1;
			memcpy(&server_pdata, event->param.conn.private_data, sizeof server_pdata);
			rdma_ack_cm_event(event);
/***************************************************************************************/
			/* Prepost receive */
            uintptr_t buf_phys = rte_mem_virt2phy(buf);
            uintptr_t buf_addr = (argc > 4 && strcmp(argv[4], "-paddr") == 0) ? buf_phys : (uintptr_t) buf;
            printf("virt addr: %p, phys addr: %p, used addr: %p\n", buf, (void *)buf_phys, (void *)buf_addr);
            if (buf_addr == -1 || buf_addr == 0)
            {
                printf("Invalid mem addr %p\n", (void *)buf_addr);
                return -1;
            }
			sge.addr    = buf_addr;
			sge.length  = sizeof (uint32_t); 
			sge.lkey    = mr->lkey; 
			recv_wr.wr_id = 0;                
			recv_wr.sg_list = &sge;
			recv_wr.num_sge = 1;
			if (ibv_post_recv(cm_id->qp, &recv_wr, &bad_recv_wr))
					return 1;

			/* Write/send two integers to be added */
			buf[0] = strtoul(argv[2], NULL, 0);
			buf[1] = strtoul(argv[3], NULL, 0);
			printf("%d + %d = ", buf[0], buf[1]);
			buf[0]  = htonl(buf[0]);
			buf[1]  = htonl(buf[1]);

// 			sge.addr    = buf_addr;
// 			sge.length  = sizeof (uint32_t);
// 			sge.lkey    =  mr->lkey;
// 			send_wr.wr_id  = 1;
// 			send_wr.opcode  = IBV_WR_RDMA_WRITE;
// 			send_wr.sg_list   = &sge;
// 			send_wr.num_sge  = 1;
// 			send_wr.wr.rdma.rkey = ntohl(server_pdata.buf_rkey);
// 			send_wr.wr.rdma.remote_addr = ntohll(server_pdata.buf_va);
// /***************************************************************************************/
// 			if (ibv_post_send(cm_id->qp, &send_wr,  &bad_send_wr))
// 					return 1;
			sge.addr    = buf_addr;
			sge.length  = sizeof (uint32_t) * 2;
			sge.lkey    = mr->lkey;
			send_wr.wr_id                = 1;
            send_wr.opcode  = IBV_WR_RDMA_WRITE_WITH_IMM;
			//send_wr.opcode                = IBV_WR_SEND;
			//send_wr.send_flags            = IBV_SEND_SIGNALED;
			send_wr.sg_list               =&sge;
			send_wr.num_sge              = 1;
            send_wr.wr.rdma.rkey = ntohl(server_pdata.buf_rkey);
 			send_wr.wr.rdma.remote_addr = ntohll(server_pdata.buf_va);
			if (ibv_post_send(cm_id->qp, &send_wr,&bad_send_wr))
            {
                perror("ibv_post_send");
                return 1;
            }

/***************************************************************************************/
			/* Wait for receive completion */
			while (1) {           
				if (ibv_get_cq_event(comp_chan,&evt_cq, &cq_context)) // 调用ibv_get_cq_event查询该完成事件通道，没有新的CQE时阻塞，有新的CQE时返回
						return 1;
				if (ibv_req_notify_cq(cq, 0)) // 调用ibv_req_notify_cq来告诉CQ当有新的CQE产生时从完成事件通道来通知用户程序
						return 1;
				if (ibv_poll_cq(cq, 1, &wc) != 1) // 调用ibv_poll_cq从CQ里读取新的CQE，此时调用ibv_poll_cq一次就好，不需要轮询
						return 1;
				if (wc.status != IBV_WC_SUCCESS)
						return 1;
				if (wc.wr_id == 0) {
						printf("%d\n", ntohl(buf[0]));
						return 0;
				}
    }
    return 0;
}