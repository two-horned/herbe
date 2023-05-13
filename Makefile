# paths
PREFIX = /usr/local
HOMEPREFIX = ~/.local
BINPREFIX = ${HOMEPREFIX}/bin
MANPREFIX = ${HOMEPREFIX}/man

X11INC = ${PREFIX}/include
X11LIB = ${PREFIX}/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = ${X11INC}/freetype2

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS}

CFLAGS = -Wall -Wextra -pedantic -lX11 -lXft ${INCS} ${LIBS} -pthread

CC ?= cc

all: herbe

config.h: config.def.h
	cp config.def.h config.h

herbe: herbe.c config.h
	$(CC) herbe.c $(CFLAGS) -o herbe

install: herbe
	mkdir -p ${BINPREFIX}
	cp -f herbe ${BINPREFIX}

uninstall:
	rm -f ${BINPREFIX}/herbe

clean:
	rm -f herbe

.PHONY: all install uninstall clean
