VERSION=3.0

MKDIR=/bin/mkdir
CP=/bin/cp
RM=/bin/rm
TAR=/bin/tar
GZIP=/usr/bin/gzip

all:
	${MAKE} -C ./src

clean:
	${RM} -rf ./sysget-${VERSION}.tar.gz
	${MAKE} -C ./src clean

dist: clean
	${MKDIR} -p ./sysget-${VERSION}
	${CP} -r Makefile COPYING AUTHORS ./src ./sysget-${VERSION}
	${TAR} -cf ./sysget-${VERSION}.tar ./sysget-${VERSION}
	${GZIP} ./sysget-${VERSION}.tar
	${RM} -rf ./sysget-${VERSION}

.PHONY: all clean
