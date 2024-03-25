#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>

#include "mqnic_ioctl.h"

// buffer长度
#define LENGTH (2*1024*1024)

struct user_mem
{
    unsigned long start;
    int length;
};

int main(int argc, char *argv[])
{
	if (argc != 2)
	{
		printf("unexpected arg num: %d\n", argc - 1);
		return -1;
	}
	int packet_length = atoi(argv[1]);
	if (packet_length < 0 || packet_length > LENGTH)
	{
		printf("Unexpected packet length: %d\n", packet_length);
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
    memset(buffer, 0xFF, LENGTH);
    FILE *mqnic = fopen("/dev/mqnic0", "rw");
    if (mqnic == NULL)
    {
        printf("open file err\n");
        return -1;
    }
    int fd = fileno(mqnic);

    struct user_mem mem = {
        .start = (unsigned long)buffer,
        .length = packet_length
    };

    int ret = ioctl(fd, MQNIC_IOCTL_SEND, &mem);
    if (ret < 0)
    {
        printf("ioctl error:%d\n", errno);
    }
    sleep(1);
    ret = ioctl(fd, MQNIC_IOCTL_FREE_BUFFER);
}