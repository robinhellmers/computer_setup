CC := gcc
CFLAGS := -pthread -g

BIN := bin
SRC := src
INCLUDE := include
LIB := lib

all: $(BIN)/server.out $(BIN)/client.out

$(BIN)/server.out: $(SRC)/server.c $(LIB)/*.c $(INCLUDE)/*.h
	$(CC) $(CFLAGS) -I$(INCLUDE) $^ -o $@

$(BIN)/client.out: $(SRC)/client.c $(LIB)/*.c $(INCLUDE)/*.h
	$(CC) $(CFLAGS) -I$(INCLUDE) $^ -o $@

clean:
	rm $(BIN)/server.out $(BIN)/client.out



# ${wildcard pattern}
# "wildcard" will list every file that follows the "pattern"
#
# Lets say we have the files hello.c hello.h goodbye.c goodbye.h
# ${wildcard *.c} will result in: hello.c goodbye.c