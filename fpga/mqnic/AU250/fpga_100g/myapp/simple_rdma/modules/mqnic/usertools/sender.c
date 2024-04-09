#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdbool.h>

#include "../mqnic_ioctl.h"

// buffer长度
#define LENGTH (2*1024*1024)
// buffer数目
#define BUFFER_NUM 512

struct args
{
	int packet_length;
	unsigned long long remote_addr;
	bool loop;
};

int parse_args(int argc, char *argv[], struct args *args)
{
	if (argc < 2 && argc > 4)
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
	unsigned long long remote_addr = 0;
	bool loop = false;
	for (int i = 2; i < argc; i++)
	{
		if (strcmp(argv[i], "--loop") == 0 || strcmp(argv[i], "-loop") == 0)
		{
			loop = true;
		}
		else 
		{
			sscanf(argv[i], "%llx", &remote_addr);
		}
	}
	args->packet_length = packet_length;
	args->remote_addr = remote_addr;
	args->loop = loop;
	printf("Received args:\n\tpacket length: %d\n\tremote addr: 0x%llx\n\tloop: %d\n"
		, args->packet_length, args->remote_addr, args->loop);
	return 0;
}

int main(int argc, char *argv[])
{
	struct args args;
	if (parse_args(argc, argv, &args))
	{
		return -1;
	}
    // 准备buffer
	void *buffers[BUFFER_NUM];
	for (int i = 0; i < BUFFER_NUM; i++)
	{
		buffers[i] = mmap(
			NULL, LENGTH, 
			PROT_READ | PROT_WRITE, 
			MAP_PRIVATE | MAP_ANONYMOUS | MAP_HUGETLB,
			-1, 0);
		if (buffers[i] == NULL)
		{
			printf("fail to alloc buffer\n");
			return -1;
		}
		memset(buffers[i], 0xFF, LENGTH);
	}
    
    FILE *mqnic = fopen("/dev/mqnic0", "rw");
    if (mqnic == NULL)
    {
        printf("Failed to open device file, please check driver status.\n");
        return -1;
    }
    int fd = fileno(mqnic);

	int i = -1;
	do
	{
		i++;
		struct user_mem mem = {
			.start = (unsigned long)buffers[i],
			.length = args.packet_length,
			.remote_addr = args.remote_addr
		};

		int ret = ioctl(fd, MQNIC_IOCTL_SEND, &mem);
		if (ret < 0)
		{
			printf("ioctl error:%d\n", errno);
			break;
		}
	} while (args.loop && (i + 1) < BUFFER_NUM);

    
    //sleep(1);
    //ret = ioctl(fd, MQNIC_IOCTL_FREE_BUFFER);
}