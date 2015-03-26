# System = i686-pc-linux-gnu

CC      = gcc
CFLAGS  = -I./
CFLAGS += -g -O2 -D_REENTRANT -Wall
LIBS    = -lrt -lpthread 

CLEANFILES = core core.* *.core *.o temp.* *.out

PROGS =	main1 main2

all:	${PROGS}

EXECUTE = ${CC} ${CFLAGS} -o $@ $^ ${LIBS}

main1: main1.o
		${EXECUTE}
main2: main2.o
		${EXECUTE}
clean:
		rm -f ${PROGS} ${CLEANFILES}
