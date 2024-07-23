- build: 

```bash
make
```

- usage:

1. 在一台机器上启动server

```bash
./server
```

2. 在另一台机器上启动client

```bash
client <serverIP> <val>
```

连接到server，使用RDMA write 发送 val

```bash
sudo client <serverIP> <val> -paddr
```

在WQE中使用物理地址，需要root