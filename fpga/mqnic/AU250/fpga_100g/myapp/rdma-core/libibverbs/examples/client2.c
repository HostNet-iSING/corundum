#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <infiniband/verbs.h>
#include "mqnic_ioctl.h"
#define SERVER_ADDR "192.168.1.134"
#define PORT 12345
#define BUFFER_SIZE 1024

void die(const char *reason) {
    perror(reason);
    exit(EXIT_FAILURE);
}

#define PFN_MASK_SIZE   8
#include <asm-generic/errno-base.h>
#include <time.h>
#include <ctype.h>
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <sys/types.h>        
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <time.h>
#include <unistd.h>
#include <stdbool.h>

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


int main() {
    struct sockaddr_in servaddr;
    int sockfd;

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) die("socket");

    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(PORT);

    if (inet_pton(AF_INET, SERVER_ADDR, &servaddr.sin_addr) <= 0) die("inet_pton");

    if (connect(sockfd, (struct sockaddr*)&servaddr, sizeof(servaddr)) < 0) die("connect");

    uint16_t lid;
    union ibv_gid gid;
    uint16_t qpn;
    unsigned long long  raddr;
    if (read(sockfd, &raddr, sizeof(raddr)) != sizeof(raddr)) die("read raddr");

    close(sockfd);

    // 打印从服务器接收到的LID和GID信息
    printf("Received Server raddr:  0x%llx\n", raddr);

    struct ibv_device **dev_list = ibv_get_device_list(NULL);
    if (!dev_list) die("ibv_get_device_list");

    struct ibv_device *ib_dev = dev_list[2];
    if (!ib_dev) {
        fprintf(stderr, "No RDMA device found\n");
        ibv_free_device_list(dev_list);
        exit(EXIT_FAILURE);
    }

    struct ibv_context *ctx = ibv_open_device(ib_dev);
    if (!ctx) die("ibv_open_device");

    struct ibv_pd *pd = ibv_alloc_pd(ctx);
    if (!pd) die("ibv_alloc_pd");

    struct ibv_cq *cq = ibv_create_cq(ctx, 10, NULL, NULL, 0);
    if (!cq) die("ibv_create_cq");

    struct ibv_qp_init_attr qp_init_attr = {
        .send_cq = cq,
        .recv_cq = cq,
        .qp_type = IBV_QPT_UD,
        .cap = {
            .max_send_wr = 10,
            .max_recv_wr = 10,
            .max_send_sge = 1,
            .max_recv_sge = 1,
        },
    };

    struct ibv_qp *qp = ibv_create_qp(pd, &qp_init_attr);
    if (!qp) die("ibv_create_qp");

    struct ibv_qp_attr qp_attr;
    memset(&qp_attr, 0, sizeof(qp_attr));
    qp_attr.qp_state = IBV_QPS_INIT;
    qp_attr.pkey_index = 0;
    qp_attr.port_num = 1;
    qp_attr.qkey = 0x11111111;


    char *buffer = calloc(20, sizeof (uint32_t)); 
    if (!buffer) die("buffer alloc fail"); 
    strcpy(buffer,"hello rdma\n"); 
    printf("buffer, %s\n", buffer);
    uintptr_t buf_phys = rte_mem_virt2phy(buffer);
    struct ibv_mr *mr = ibv_reg_mr(pd, buffer, BUFFER_SIZE, IBV_ACCESS_LOCAL_WRITE);
    if (!mr) die("ibv_reg_mr");

    struct ibv_sge sge = {
        .addr = (uintptr_t)buf_phys,
//        .length = BUFFER_SIZE,
        .length = 4,
        .lkey = mr->lkey,
    };

    struct ibv_send_wr send_wr = {
        .wr_id = 0,
        .sg_list = &sge,
        .num_sge = 1,
        .opcode = IBV_WR_SEND,
        .send_flags = IBV_SEND_SIGNALED,
        .wr.rdma = {
            .remote_addr = (uintptr_t)raddr,
            .rkey = 0x11111111,
        },
    };

    // 创建地址句柄
    struct ibv_ah_attr ah_attr = {
        .is_global = 1,
        .dlid = lid,
        .sl = 0,
        .src_path_bits = 0,
        .port_num = 1,
        .grh = {
            .dgid = gid,
            .flow_label = 0,
            .sgid_index = 0,
            .hop_limit = 1,
            .traffic_class = 0
        }
    };


    struct ibv_send_wr *bad_wr;
    if (ibv_post_send(qp, &send_wr, &bad_wr)) die("ibv_post_send");
    sleep(1);
    struct ibv_wc wc;
    while (ibv_poll_cq(cq, 1, &wc) < 1) {sleep(1);}
    if (wc.status != IBV_WC_SUCCESS) die("wc.status != IBV_WC_SUCCESS");

    printf("Data sent: %s\n", buffer);

    ibv_dereg_mr(mr);
    free(buffer);
    ibv_destroy_qp(qp);
    ibv_destroy_cq(cq);
    ibv_dealloc_pd(pd);
    ibv_close_device(ctx);
    ibv_free_device_list(dev_list);

    return 0;
}
