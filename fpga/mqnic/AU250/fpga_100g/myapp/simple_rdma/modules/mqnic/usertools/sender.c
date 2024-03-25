#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>

#include "mqnic_ioctl.h"

#define LENGTH (2*1024*1024)

struct user_mem
{
    unsigned long start;
    int length;
};

int main(void)
{
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
        .length = LENGTH
    };

    int ret = ioctl(fd, MQNIC_IOCTL_SEND, &mem);
    if (ret < 0)
    {
        printf("ioctl error:%d\n", errno);
    }
    getchar();
    ret = ioctl(fd, MQNIC_IOCTL_FREE_BUFFER);
}