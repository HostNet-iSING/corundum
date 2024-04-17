all: sender.c receiver.c ../mqnic_ioctl.h
	gcc sender.c -O2 -o sender
	gcc receiver.c -o receiver

.PHONY: clean
clean:
	rm receiver sender