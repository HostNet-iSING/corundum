# Usertools

### 构建

```bash
make
```

### 发包器

- Usage(需要sudo)

```bash
sudo ./sender packets_file
```

根据给定的packets file的配置生成一串包并发送，packets file格式见本目录下packets文件。

每个包的长度应在0-2MB之间。

### 收包器

- Usage(需要sudo)

```bash
sudo ./receiver buffer_length(in bytes)
```

生成一个buffer_length字节的可DMA的buffer，buffer_length应在0-2MB之间。生成后在终端打印其DMA地址。

每隔1s检测buffer内容是否变化，如果变化打印buffer内容。

CTRL+C结束程序