all:
	gcc -o server server.c -lrdmacm -libverbs
	gcc -o client client.c -lrdmacm -libverbs

clean:
	rm client server