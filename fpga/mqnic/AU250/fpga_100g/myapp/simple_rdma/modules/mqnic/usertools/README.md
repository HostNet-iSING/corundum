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