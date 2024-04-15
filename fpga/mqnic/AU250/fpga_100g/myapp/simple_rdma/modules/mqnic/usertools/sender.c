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
// 配置文件最大包数目
#define MAX_PACKETS_NUM 1024

struct Packet
{
	int length;
	unsigned long long remote_addr;
	char *content;
};

// 读取一行，清除尾部\n，一行不得超过32k字符
char *readline(FILE *fp)
{
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
	if (buf == NULL)
	{
		printf("fail to alloc buffer\n");
		exit(-1);
	}
	return buf;
}

int parse_packets_file(FILE *packets_file, struct Packet **out_packets)
{
	int loop_times = atoi(readline(packets_file));
	printf("loop times: %d\n", loop_times);
	struct Packet *packets = malloc(sizeof(struct Packet) * MAX_PACKETS_NUM);
	int packet_num = 0;
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
		char *line_buffer;
		int buffer_idx = 0, buffer_length = 0;
		for (int i = 0; i < packet_length; i++)
		{
			if (buffer_idx >= buffer_length)
			{
				// 读取新一行
				buffer_idx = 0;
				line_buffer = readline(packets_file);
				buffer_length = strlen(line_buffer);
			}
			char upper_half = line_buffer[buffer_idx];
			buffer_idx++;
			if (buffer_idx >= buffer_length)
			{
				// 读取新一行
				buffer_idx = 0;
				line_buffer = readline(packets_file);
				buffer_length = strlen(line_buffer);
			}
			char bottom_half = line_buffer[buffer_idx];
			buffer_idx++;
			char cur_byte[5] = {'0', 'x', upper_half, bottom_half, '\0'};
			char real_value;
			sscanf(cur_byte, "%c", &real_value);
			content[i] = real_value;
		}
		// generate struct Packet
		struct Packet *packet = &packets[packet_num];
		packet->length = packet_length;
		packet->remote_addr = remote_addr;
		packet->content = content;
		packet_num++;
		printf("Read packet: length: %d remote addr: 0x%llx\n", packet->length, packet->remote_addr);
	}
	// 若loop > 1，复制packets序列来填充
	for (int i = 1; i < loop_times; i++)
	{
		for (int j = 0; j < packet_num; j++)
		{
			struct Packet ref = packets[j];
			struct Packet *copy = &packets[i * packet_num + j];
			copy->length = ref.length;
			copy->remote_addr = ref.remote_addr;
			copy->content = alloc_hugepage();
			strcpy(copy->content, ref.content);
		}
	}
	*out_packets = packets;
	return packet_num * loop_times;
}

int main(int argc, char *argv[])
{
	if (argc != 2)
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
	struct Packet *packets;
	int packet_num = parse_packets_file(packets_file, &packets);
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
    int fd = fileno(mqnic);

	for (int i = 0; i < packet_num; i++)
	{
		struct user_mem mem = {
			.start = (unsigned long)packets[i].content,
			.length = packets[i].length,
			.remote_addr = packets[i].remote_addr
		};
		int ret = ioctl(fd, MQNIC_IOCTL_SEND, &mem);
		if (ret < 0)
		{
			printf("ioctl error:%d\n", errno);
			break;
		}
	}
}