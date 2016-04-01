CC              = cc
CFLAGS          = -std=c99 -I. -O1 -Wall
AR              = ar
RANLIB          = ranlib
INSTALL         = install
LIB             = libcerror.a
DST             = /usr/local
SRCS            = $(wildcard *.c)
OBJS            = $(SRCS:.c=.o)

.PHONY : all clean
.DEFAULT_GOAL = all

$(LIB): $(OBJS)
	$(AR) -r $@ $?
	$(RANLIB) $@

lib: $(LIB)

all: lib

install:
	$(INSTALL) $(LIB) $(addprefix $(DST)/, lib)
	$(INSTALL) cerror.h $(addprefix $(DST)/, include)

clean:
	rm -f $(OBJS) $(LIB)
