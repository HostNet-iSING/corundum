- build: 

```bash
make
```

- usage:

1. 在一台机器上启动server

```bash
./server n
```

2. 在另一台机器上启动client (ibv_rcpingpong的同级目录)

```bash
ibv_client
```

连接到server，使用RDMA write 发送 val

