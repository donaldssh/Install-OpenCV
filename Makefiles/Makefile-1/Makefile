CFLAGS=-g `pkg-config --cflags opencv4`
LFLAGS=`pkg-config --libs opencv4`
CC=g++

SRCS	:= ./program-name.cpp

OBJS	:= ${SRCS:cpp=o}
PROGS	:= ${SRCS:cpp=out}

.PHONY: all

all: ${PROGS}

${PROGS} : %.out : %.o Makefile
	${CC} $< -o $@ ${LFLAGS}

clean:
	rm -f ${PROGS} ${OBJS}

%.o: %.cpp Makefile
	${CC} ${CFLAGS} -c $<
