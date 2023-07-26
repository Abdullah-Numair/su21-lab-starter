CC=gcc
CFLAGS=-Wall -std=c99 -g

all: vector.o bit_ops.o

vector.o: vector.c test_vector.c
	$(CC) $(CFLAGS) -o vector vector.c test_vector.c

bit_ops.o: bit_ops.c test_bit_ops.c
	$(CC) $(CFLAGS) -o bit_ops bit_ops.c test_bit_ops.c

# linked_list: linked_list.o test_linked_list.o
# 	$(CC) -o linked_list linked_list.o test_linked_list.o

# linked_list.o: linked_list.c linked_list.h
# 	$(CC) $(CFLAGS) -c /home/user103/su21-lab-starter/lab01/exercise3/linked_list.c

# test_linked_list.o: test_linked_list.c linked_list.h
# 	$(CC) $(CFLAGS) -c /home/user103/su21-lab-starter/lab01/exercise3/test_linked_list.c



clean:
	rm vector bit_ops linked_list.o test_linked_list.o