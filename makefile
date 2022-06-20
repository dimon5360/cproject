TARGET=main
CC=gcc

SRCS=main.c
OBJS=$(SRC:.c=.o)
EXEC=build/main

CCFLAGS=-c -Wall
GTKLIB=`pkg-config --cflags --libs gtk+-3.0`

# linker
LD=gcc
#LDFLAGS= #$(GTKLIB) -export-dynamic

all: clean $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(LDFLAGS) $(SRCS) -o $@

.c.o:
	$(CC) $(CFLAGS) $(SRCS) $< -o $@

clean:
	rm -f *.o $(EXEC)
