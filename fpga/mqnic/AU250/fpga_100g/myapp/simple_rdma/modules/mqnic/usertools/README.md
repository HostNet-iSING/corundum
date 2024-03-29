# Usertools

## 发包器

- Build

```bash
gcc sender.c -o sender
```

- Usage(需要sudo)

```bash
sudo ./sender packet_length(in bytes)
```

生成一个packet_length字节的buffer提交给网卡，packet_length应在0-2MB之间。

发完包后会sleep一秒然后释放buffer，不是卡死了。

## 收包器

- Build

```bash
gcc receiver.c -o receiver
```

- Usage(需要sudo)

```bash
sudo ./receiver buffer_length(in bytes)
```

生成一个buffer_length字节的可DMA的buffer，buffer_length应在0-2MB之间。生成后在终端打印其DMA地址。

每隔1s检测buffer内容是否变化，如果变化打印buffer内容。

CTRL+C结束程序