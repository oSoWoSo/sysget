CFLAGS=-std=c89 -Wall -Wextra -Wpedantic

FILES=main.c

RM=/bin/rm

.SUFFIXES: .c .o

.c.o:
	${CC} ${CFLAGS} -c $<

all: ${FILES}
	${CC} ${CFLAGS} -O2 ${FILES} -o sysget ${LDFLAGS}

clean:
	${RM} -f *.o sysget

.PHONY: all clean
