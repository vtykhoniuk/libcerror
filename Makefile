CC              = cc
CFLAGS          = -std=c99 -I. -O1 -Wall
AR              = ar
RANLIB          = ranlib
LIB             = libcerror.a
SRCS            = $(wildcard *.c)
OBJS            = $(SRCS:.c=.o)

.PHONY : all clean
.DEFAULT_GOAL = all

$(LIB): $(OBJS)
	$(AR) -r $@ $?
	$(RANLIB) $@

lib: $(LIB)

all: lib

clean:
	rm -f $(OBJS) $(LIB)
