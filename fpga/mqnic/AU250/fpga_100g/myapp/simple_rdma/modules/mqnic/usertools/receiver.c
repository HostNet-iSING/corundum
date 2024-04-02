#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>

#include "../mqnic_ioctl.h"

// buffer长度
#define LENGTH (2*1024*1024)

#define min(a,b) (((a) < (b)) ? (a) : (b))

int fd;

void handler(int signal)
{
	printf("exiting with signal %d\n", signal);
	int ret = ioctl(fd, MQNIC_IOCTL_FREE_BUFFER);
	if (ret < 0)
    {
        printf("ioctl error:%d\n", errno);
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

int main(int argc, char *argv[])
{
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

    struct user_mem mem = {
        .start = (unsigned long)buffer,
        .length = buffer_length
    };

    int ret = ioctl(fd, MQNIC_IOCTL_DMA_MAP, &mem);
    if (ret < 0)
    {
        printf("ioctl error:%d\n", errno);
		return -1;
    }

	printf("map success, buffer dma addr: 0x%llx\n", *(unsigned long long *)&mem);

	void *ref = malloc(buffer_length);
	if (ref == NULL)
	{
		printf("failed to alloc reference buffer.\n");
		return -1;
	}
	memcpy(ref, buffer, buffer_length);

	signal(SIGINT, handler);

	while(1)
	{
		check_buffer(buffer, ref, buffer_length);
		sleep(1);
	}
	
}