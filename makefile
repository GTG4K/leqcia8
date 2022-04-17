

CC = gcc
CFLAGS=-Wall

all: occurFile
.PHONY : all

occurFile: My_getchar.o occur.c
	$(CC) $(CFLAGS) -o occurFile My_getchar.o occur.o
	
My_getchar.o: My_getchar.c
	$(CC) $(CFLAGS) -c -o My_getchar.o My_getchar.c

occur.o: occur.c
	$(CC) $(CFLAGS) -c -o occur.o occur.c
	
debug: clean My_getchar.c occur.c
	$(CC) $(CFLAGS) -g -o test occur.c My_getchar.c
	gdb -tui test
	
.PHONY: clean
clean:
	rm -rf *.o
