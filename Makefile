## Alterar de acordo com o projeto

SRC=src/main.c

## Não alterar a partir daqui

CC=gcc
CFLAGS=-Wall -Wextra -std=c11 -g
# CFLAGS=-Wall -Wextra -Werror -pedantic -std=c11 -g

LDLIBS=-lm

main: src/main.c $(SRC)
	mkdir -p bin
	$(CC) $(CFLAGS) $^ -o bin/$@ $(LDLIBS)

clean:
	rm -rf bin
