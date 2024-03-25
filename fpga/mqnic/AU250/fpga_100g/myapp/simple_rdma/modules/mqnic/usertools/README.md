# Usertools

## 发包器

- build

```bash
gcc sender.c -o sender
```

- Usage(需要sudo)

```bash
sudo ./sender packet_length(in bytes)
```

发完包后会sleep一秒然后释放buffer，不是卡死了