# Makefile for Github hello world

CC=gcc
DELFILE=rm
SRC=main.c
OPT=-std=c89 -pedantic -Wall -Wextra -Werror
DOPT=-g
ROPT=-DNDEBUG -O3
EXEC=hello

all: debug release

debug:
	$(CC) $(OPT) $(DOPT) $(SRC) -o d$(EXEC)

release:
	$(CC) $(OPT) $(ROPT) $(SRC) -o $(EXEC)

clean:
	$(DELFILE) dhello hello
