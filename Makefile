CC              = cc
CFLAGS          = -std=c99 -I. -O1 -Wall
AR              = ar
RANLIB          = ranlib

.PHONY : all clean
.DEFAULT_GOAL = all

cerror.o: cerror.c cerror.h
	$(CC) -c $(CFLAGS) $<

libcerror.a: cerror.o
	$(AR) -r $@ $<
	$(RANLIB) $@

all: libcerror.a

clean:
	rm -f cerror.o libcerror.a
