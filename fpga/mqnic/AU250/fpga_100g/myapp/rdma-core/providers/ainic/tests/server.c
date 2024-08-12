#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <infiniband/verbs.h>

#define PORT 12345
#define BUFFER_SIZE 1024

#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>

#include "mqnic_ioctl.h"

// buffer长度
#define LENGTH (2*1024*1024)

#define min(a,b) (((a) < (b)) ? (a) : (b))

int fd;
struct user_mem mem;

void handler(int signal)
{
	printf("exiting with signal %d\n", signal);
	if (mem.dma_addr != 0)
	{
		int ret = ioctl(fd, MQNIC_IOCTL_DMA_UNMAP, &mem);
		if (ret < 0)
		{
			printf("ioctl error:%d\n", errno);
		}
	}
	
	exit(0);
}

void check_buffer(char *buffer, char *ref, int length)
{
	for (int i = 0; i < length; i++)
	{
		if (buffer[i] != ref[i])
		{
			printf("buffer changed, new buffer(total length %d):\n", length);
			for (int j = 0; j < (length + 15) / 16; j++)
			{
				printf("%04x: ", j * 16);
				for (int k = 0; k < min(16, length - j * 16); k++)
				{
					printf("%02x ", (unsigned char)buffer[j * 16 + k]);
				}
				printf("\n");
				
			}
			memcpy(buffer, ref, length);
			printf("buffer reseted.\n");
			return;
		}
	}
}

void die(const char *reason) {
    perror(reason);
    exit(EXIT_FAILURE);
}

int main(int argc, char *argv[]) {
    	if (argc != 2)
	{
		printf("unexpected arg num: %d\n", argc - 1);
		return -1;
	}
	int buffer_length = atoi(argv[1]);
	if (buffer_length < 0 || buffer_length > LENGTH)
	{
		printf("Unexpected buffer length: %d\n", buffer_length);
		return -1;
	}
    // 准备buffer
    void *buffer = mmap(
        NULL, LENGTH, 
        PROT_READ | PROT_WRITE, 
        MAP_PRIVATE | MAP_ANONYMOUS | MAP_HUGETLB,
        -1, 0);
    if (buffer == NULL)
    {
        printf("fail to alloc buffer\n");
        return -1;
    }
    memset(buffer, 0x0, LENGTH);
    FILE *mqnic = fopen("/dev/mqnic0", "rw");
    if (mqnic == NULL)
    {
        printf("Failed to open device file, please check driver status.\n");
        return -1;
    }
    fd = fileno(mqnic);

    mem.start = (unsigned long)buffer;
    mem.length = buffer_length;

    int ret = ioctl(fd, MQNIC_IOCTL_DMA_MAP, &mem);
    if (ret < 0)
    {
        printf("ioctl error:%d\n", errno);
		return -1;
    }

	printf("map success, buffer dma addr: 0x%llx\n", mem.dma_addr);

	void *ref = malloc(buffer_length);
	if (ref == NULL)
	{
		printf("failed to alloc reference buffer.\n");
		return -1;
	}
	memcpy(ref, buffer, buffer_length);

	signal(SIGINT, handler);
    unsigned long long raddr = mem.dma_addr;

    // 通过套接字将LID和GID发送给客户端
    int listen_fd, conn_fd;
    struct sockaddr_in servaddr;
    
    listen_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (listen_fd < 0) die("socket");

    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    servaddr.sin_port = htons(PORT);

    if (bind(listen_fd, (struct sockaddr*)&servaddr, sizeof(servaddr)) < 0) die("bind");
    if (listen(listen_fd, 1) < 0) die("listen");

    conn_fd = accept(listen_fd, (struct sockaddr*)NULL, NULL);
    if (conn_fd < 0) die("accept");
 
    if (write(conn_fd, &raddr, sizeof(raddr)) != sizeof(raddr)) die("write raddr");

    close(conn_fd);
    close(listen_fd);

    
    while(1)
	{
		check_buffer(buffer, ref, buffer_length);
		sleep(1);
	}
	/*
    // 初始化数据缓冲区和内存注册
    char *buffer = (char *)malloc(BUFFER_SIZE);
    if (!buffer) die("malloc");

    struct ibv_mr *mr = ibv_reg_mr(pd, buffer, BUFFER_SIZE, IBV_ACCESS_LOCAL_WRITE);
    if (!mr) die("ibv_reg_mr");

    struct ibv_recv_wr recv_wr = {
        .wr_id = 0,
        .sg_list = (struct ibv_sge[]){
            {
                .addr = (uintptr_t)buffer,
                .length = BUFFER_SIZE,
                .lkey = mr->lkey,
            },
        },
        .num_sge = 1,
    };

    struct ibv_recv_wr *bad_wr;
    if (ibv_post_recv(qp, &recv_wr, &bad_wr)) die("ibv_post_recv");

    printf("Waiting for data...\n");
    while (1) {
        struct ibv_wc wc;
        if (ibv_poll_cq(cq, 1, &wc) < 1) continue;
        if (wc.status != IBV_WC_SUCCESS) die("wc.status != IBV_WC_SUCCESS");

        printf("Received data: %s\n", buffer);
    }

    ibv_dereg_mr(mr);
    free(buffer);
    ibv_destroy_qp(qp);
    ibv_destroy_cq(cq);
    ibv_dealloc_pd(pd);
    ibv_close_device(ctx);
    ibv_free_device_list(dev_list);
*/
    return 0;
}
