#ifndef LIBCERROR_H
#define LIBCERROR_H

#define CERROR_MAXLINE  1024

#include <errno.h>

/* Fatal error related to system call
   Print and terminate */
void err_sys(const char* fmt, ...);

/* Non fatal error related to system call
   Print error message and return */
void err_ret(const char* fmt, ...);

/* Fatal error unrelated to system call
   Print and terminate */
void err_quit(const char* fmt, ...);

/* Non fatal error unrelated to system call
   Print error message and return */
void err_msg(const char* fmt, ...);

#endif // LIBCERROR_H
