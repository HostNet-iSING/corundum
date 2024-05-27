#include <asm-generic/errno-base.h>
#include <time.h>
#include <ctype.h>
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <time.h>
#include <unistd.h>
#include <stdbool.h>

#include "../mqnic_ioctl.h"

// buffer长度
#define LENGTH (2*1024*1024)
// 配置文件最大包数目
#define MAX_PACKETS_NUM 1024

struct Packet
{
	int length;
	unsigned long long remote_addr;
	char *content;
};

void strip_whitespace(FILE *fp)
{
	while (!feof(fp))
	{
		int c = fgetc(fp);
		if (!isspace(c))
		{
			ungetc(c, fp);
			break;
		}
	}
}

// 读取一行，清除尾部\n，一行不得超过32k字符
char *readline(FILE *fp)
{
	if (feof(fp))
	{
		printf("tring to read beyond file end!\n");
		return NULL;
	}
	char *line = malloc(sizeof(char) * 32768);
	fgets(line, 32768, fp);
	// 忽略#开头的注释行
	while (line[0] == '#')
	{
		fgets(line, 32768, fp);
	}
	if (strchr(line, '\n') != NULL)
	{
		*strchr(line, '\n') = '\0';
	}
	line = realloc(line, strlen(line));
	return line;
}

void *alloc_hugepage()
{
	void *buf = mmap(
		NULL, 2 * 1024 * 1024, 
		PROT_READ | PROT_WRITE, 
		MAP_PRIVATE | MAP_ANONYMOUS | MAP_HUGETLB,
		-1, 0);
	if (buf == NULL || buf == (void *)-1)
	{
		perror("fail to alloc buffer");
		exit(-1);
	}
	return buf;
}

int parse_packets_file(
    FILE *packets_file, 
    struct Packet **out_packets, 
    int *loop_times,
    int *ring_num
){
	*loop_times = atoi(readline(packets_file));
	printf("loop times: %d\n", *loop_times);
    *ring_num = atoi(readline(packets_file));
    printf("Use %d QP\n", *ring_num);
	struct Packet *packets = malloc(sizeof(struct Packet) * MAX_PACKETS_NUM);
	int packet_num = 0;
	strip_whitespace(packets_file);
	while (!feof(packets_file))
	{
		// read packet length
		int packet_length = atoi(readline(packets_file));
		if (packet_length < 0 || packet_length > LENGTH)
		{
			printf("Unexpected packet length: %d\n", packet_length);
			return -1;
		}
		// read remote addr
		unsigned long long remote_addr = 0;
		sscanf(readline(packets_file), "%llx", &remote_addr);
		// read content
		char *content = alloc_hugepage();
		memset(content, 0xFF, 2 * 1024 * 1024);
		// generate struct Packet
		struct Packet *packet = &packets[packet_num];
		packet->length = packet_length;
		packet->remote_addr = remote_addr;
		packet->content = content;
		packet_num++;
		printf("Read packet: length: %d remote addr: 0x%llx\n", packet->length, packet->remote_addr);
		
		strip_whitespace(packets_file);
	}
	*out_packets = packets;
	return packet_num;
}

int fd;
int packet_num;
struct user_mem *mems;

void handler(int signal)
{
	printf("exiting with signal %d\n", signal);
	// DMA Unmap
	for (int i = 0; i < packet_num; i++)
	{
		if (mems[i].dma_addr != 0)
		{
			int ret = ioctl(fd, MQNIC_IOCTL_DMA_UNMAP, &mems[i]);
			if (ret < 0)
			{
				printf("UNMAP:ioctl error:%d\n", errno);
			}
			else
			{
				printf("Successful unmap buffer %d\n", i);
			}
		}
	}
	
	exit(0);
}

int main(int argc, char *argv[])
{
	if (argc != 2 && argc != 3)
	{
		printf("unexpected arg num: %d\n", argc - 1);
		return -1;
	}
	FILE *packets_file = fopen(argv[1], "r");
	if (packets_file == NULL)
	{
		printf("Failed to open packets file %s\n", argv[1]);
		return -1;
	}
    bool timeit = false;
    if ((argc == 3) &&
        (0 == strcmp(argv[2], "--time") || 0 == strcmp(argv[2], "-time")))
    {
        timeit = true;
    }
	struct Packet *packets;
	int loop_times = 0, ring_num = 0;
	packet_num = parse_packets_file(packets_file, &packets, &loop_times, &ring_num);
	if (packet_num < 0)
	{
		printf("Error occured during parsing packets file.\n");
		return -1;
	}
    
    FILE *mqnic = fopen("/dev/mqnic0", "rw");
    if (mqnic == NULL)
    {
        printf("Failed to open device file, please check driver status.\n");
        return -1;
    }
    fd = fileno(mqnic);

	mems = calloc(packet_num * loop_times, sizeof(struct user_mem));

	printf("content: 0x%x\n", packets[0].content[0]);

	// DMA map
	for (int i = 0; i < loop_times; i++)
    {
        for (int j = 0; j < packet_num; j++)
        {   
            int index = i * packet_num + j;
            mems[index].start = (unsigned long)packets[j].content;
            mems[index].length = packets[j].length;
            mems[index].remote_addr = packets[j].remote_addr;
            mems[index].ring_no = index % ring_num;
            if (i == 0)
            {
                int ret = ioctl(fd, MQNIC_IOCTL_DMA_MAP, &mems[j]);
                if (ret < 0)
                {
                    printf("DMA MAP:ioctl error:%d\n", errno);
                    return -1;
                }
                printf("dma addr: %llx\n", mems[j].dma_addr);
            }
            
	    }
    }

	signal(SIGINT, handler);
	signal(SIGTERM, handler);
	signal(SIGKILL, handler);
	signal(SIGHUP, handler);
	signal(SIGABRT, handler);
	signal(SIGSTOP, handler);

    time_t start = clock();

    struct
    {
        struct user_mem *mems;
        int length;
        int start;
        int next_start;
    } batch;
    batch.mems = mems;
    batch.length = packet_num * loop_times;
    batch.start = 0;
    batch.next_start = 0;


	// Send packets
    int ret = 0;
    do {
        batch.start = batch.next_start;
        ret = ioctl(fd, MQNIC_IOCTL_SEND_BATCH, &batch);
    } while (batch.next_start < batch.length);
    
    if (ret < 0)
    {
        perror("SEND:ioctl error");
        goto end;
    }

    do
    {
        ret = ioctl(fd, MQNIC_IOCTL_CHECK_RING_EMPTY, ring_num);
    } while (ret != 0);
	
end:
    // measure throughput
    if (timeit)
    {   
        time_t end = clock();
        float seconds = (end - start) / (float)CLOCKS_PER_SEC;
        printf("time: %.3fs\n", seconds);
        printf("pps: %.3fK\n", packet_num * loop_times / seconds / 1024);
        unsigned total_size = 0;
        for (int i = 0; i < packet_num; i++)
        {
            total_size += packets[i].length;
        }
        total_size *= loop_times;
        printf("throughput: %.3f MB/s\n", total_size / seconds / 1024 / 1024);
    }
	// in case NIC is using these buffers
	//sleep(1);
	// DMA Unmap
	for (int i = 0; i < packet_num; i++)
	{
		if (mems[i].dma_addr != 0)
		{
			int ret = ioctl(fd, MQNIC_IOCTL_DMA_UNMAP, &mems[i]);
			if (ret < 0)
			{
				printf("UNMAP:ioctl error:%d\n", errno);
			}
			else
			{
				printf("Successful unmap buffer %d\n", i);
			}
		}
	}
}