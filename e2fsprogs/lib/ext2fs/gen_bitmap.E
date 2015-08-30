# 1 "gen_bitmap.c"
# 1 "e:\\projects\\imported\\e2fsprogs\\lib\\ext2fs//"
# 1 "<command-line>"
# 1 "gen_bitmap.c"
# 13 "gen_bitmap.c"
# 1 "../../lib/config.h" 1
# 525 "../../lib/config.h"
# 1 "c:\\mingw\\include\\sys\\time.h" 1 3


# 1 "c:\\mingw\\include\\time.h" 1 3
# 15 "c:\\mingw\\include\\time.h" 3
# 1 "c:\\mingw\\include\\_mingw.h" 1 3
# 41 "c:\\mingw\\include\\_mingw.h" 3
       
# 42 "c:\\mingw\\include\\_mingw.h" 3
# 16 "c:\\mingw\\include\\time.h" 2 3





# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 212 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 324 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 22 "c:\\mingw\\include\\time.h" 2 3
# 40 "c:\\mingw\\include\\time.h" 3
typedef long __time32_t;






typedef long long __time64_t;
# 61 "c:\\mingw\\include\\time.h" 3
typedef __time32_t time_t;
# 71 "c:\\mingw\\include\\time.h" 3
typedef long clock_t;
# 80 "c:\\mingw\\include\\time.h" 3
struct tm
{
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;

};







 clock_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) clock (void);

 time_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) time (time_t*);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) difftime (time_t, time_t);
 time_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mktime (struct tm*);
# 117 "c:\\mingw\\include\\time.h" 3
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) asctime (const struct tm*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ctime (const time_t*);
 struct tm* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gmtime (const time_t*);
 struct tm* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) localtime (const time_t*);


 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strftime (char*, size_t, const char*, const struct tm*);



extern void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tzset (void);


extern void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tzset (void);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strdate(char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strtime(char*);
# 186 "c:\\mingw\\include\\time.h" 3
extern int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__daylight (void);
extern long* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__timezone (void);
extern char** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__tzname (void);

extern __attribute__ ((__dllimport__)) int _daylight;
extern __attribute__ ((__dllimport__)) long _timezone;
extern __attribute__ ((__dllimport__)) char *_tzname[2];
# 226 "c:\\mingw\\include\\time.h" 3
extern __attribute__ ((__dllimport__)) int daylight;
extern __attribute__ ((__dllimport__)) long timezone;
extern __attribute__ ((__dllimport__)) char *tzname[2];
# 250 "c:\\mingw\\include\\time.h" 3
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wasctime(const struct tm*);

 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wctime(const time_t*);

 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wstrdate(wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wstrtime(wchar_t*);
# 269 "c:\\mingw\\include\\time.h" 3
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsftime (wchar_t*, size_t, const wchar_t*, const struct tm*);
# 4 "c:\\mingw\\include\\sys\\time.h" 2 3







struct timeval {
  long tv_sec;
  long tv_usec;
};
# 26 "c:\\mingw\\include\\sys\\time.h" 3
struct timezone
{
  int tz_minuteswest;
  int tz_dsttime;
};
# 39 "c:\\mingw\\include\\sys\\time.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gettimeofday(struct timeval *__restrict__,
    void *__restrict__ );
# 526 "../../lib/config.h" 2
# 832 "../../lib/config.h"
# 1 "../../lib/dirpaths.h" 1
# 833 "../../lib/config.h" 2
# 14 "gen_bitmap.c" 2
# 1 "c:\\mingw\\include\\stdio.h" 1 3
# 26 "c:\\mingw\\include\\stdio.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 353 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 3 4
typedef short unsigned int wint_t;
# 27 "c:\\mingw\\include\\stdio.h" 2 3

# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdarg.h" 1 3 4
# 40 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 29 "c:\\mingw\\include\\stdio.h" 2 3
# 130 "c:\\mingw\\include\\stdio.h" 3
typedef struct _iobuf
{
 char* _ptr;
 int _cnt;
 char* _base;
 int _flag;
 int _file;
 int _charbuf;
 int _bufsiz;
 char* _tmpfname;
} FILE;
# 155 "c:\\mingw\\include\\stdio.h" 3
extern __attribute__ ((__dllimport__)) FILE _iob[];












 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) freopen (const char*, const char*, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fflush (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fclose (FILE*);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) remove (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rename (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpfile (void);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpnam (char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _unlink (const char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) unlink (const char*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setvbuf (FILE*, char*, int, size_t);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setbuf (FILE*, char*);
# 203 "c:\\mingw\\include\\stdio.h" 3
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_fprintf(FILE*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_printf(const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_sprintf(char*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_snprintf(char*, size_t, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vfprintf(FILE*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vprintf(const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsprintf(char*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsnprintf(char*, size_t, const char*, __gnuc_va_list);
# 292 "c:\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fprintf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) printf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sprintf (char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfprintf (FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vprintf (const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsprintf (char*, const char*, __gnuc_va_list);
# 307 "c:\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_fprintf(FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_printf(const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_sprintf(char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vfprintf(FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vprintf(const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vsprintf(char*, const char*, __gnuc_va_list);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snprintf (char*, size_t, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnprintf (char*, size_t, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscprintf (const char*, __gnuc_va_list);
# 330 "c:\\mingw\\include\\stdio.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snprintf (char *, size_t, const char *, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnprintf (char *, size_t, const char *, __gnuc_va_list);

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vscanf (const char * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfscanf (FILE * __restrict__, const char * __restrict__,
       __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsscanf (const char * __restrict__,
       const char * __restrict__, __gnuc_va_list);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fscanf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) scanf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sscanf (const char*, const char*, ...);




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetc (FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgets (char*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputc (int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputs (const char*, FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gets (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) puts (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetc (int, FILE*);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _filbuf (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flsbuf (int, FILE*);



extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getc (FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) *__F->_ptr++
    : _filbuf (__F);
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putc (int __c, FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) (*__F->_ptr++ = (char)__c)
    : _flsbuf (__c, __F);
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getchar (void)
{
  return (--(&_iob[0])->_cnt >= 0)
    ? (int) (unsigned char) *(&_iob[0])->_ptr++
    : _filbuf ((&_iob[0]));
}

extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putchar(int __c)
{
  return (--(&_iob[1])->_cnt >= 0)
    ? (int) (unsigned char) (*(&_iob[1])->_ptr++ = (char)__c)
    : _flsbuf (__c, (&_iob[1]));}
# 411 "c:\\mingw\\include\\stdio.h" 3
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fread (void*, size_t, size_t, FILE*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwrite (const void*, size_t, size_t, FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseek (FILE*, long, int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftell (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rewind (FILE*);
# 454 "c:\\mingw\\include\\stdio.h" 3
typedef long long fpos_t;




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetpos (FILE*, fpos_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fsetpos (FILE*, const fpos_t*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) feof (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ferror (FILE*);
# 479 "c:\\mingw\\include\\stdio.h" 3
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) clearerr (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) perror (const char*);






 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _pclose (FILE*);


 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) pclose (FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flushall (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fileno (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcloseall (void);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fsopen (const char*, const char*, int);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getmaxstdio (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _setmaxstdio (int);
# 526 "c:\\mingw\\include\\stdio.h" 3
unsigned int __attribute__((__cdecl__)) __mingw_get_output_format (void);
unsigned int __attribute__((__cdecl__)) __mingw_set_output_format (unsigned int);







int __attribute__((__cdecl__)) __mingw_get_printf_count_output (void);
int __attribute__((__cdecl__)) __mingw_set_printf_count_output (int);
# 553 "c:\\mingw\\include\\stdio.h" 3
extern __inline__ __attribute__((__always_inline__)) unsigned int __attribute__((__cdecl__)) _get_output_format (void)
{ return __mingw_get_output_format (); }

extern __inline__ __attribute__((__always_inline__)) unsigned int __attribute__((__cdecl__)) _set_output_format (unsigned int __style)
{ return __mingw_set_output_format (__style); }
# 579 "c:\\mingw\\include\\stdio.h" 3
extern __inline__ __attribute__((__always_inline__)) int __attribute__((__cdecl__)) _get_printf_count_output (void)
{ return 0 ? 1 : __mingw_get_printf_count_output (); }

extern __inline__ __attribute__((__always_inline__)) int __attribute__((__cdecl__)) _set_printf_count_output (int __mode)
{ return 0 ? 1 : __mingw_set_printf_count_output (__mode); }



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fileno (FILE*);
# 599 "c:\\mingw\\include\\stdio.h" 3
# 1 "c:\\mingw\\include\\sys\\types.h" 1 3
# 21 "c:\\mingw\\include\\sys\\types.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 147 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 22 "c:\\mingw\\include\\sys\\types.h" 2 3
# 52 "c:\\mingw\\include\\sys\\types.h" 3
typedef long _off_t;


typedef _off_t off_t;







typedef unsigned int _dev_t;





typedef _dev_t dev_t;






typedef short _ino_t;


typedef _ino_t ino_t;






typedef int _pid_t;


typedef _pid_t pid_t;






typedef unsigned short _mode_t;


typedef _mode_t mode_t;






typedef int _sigset_t;


typedef _sigset_t sigset_t;





typedef int _ssize_t;


typedef _ssize_t ssize_t;





typedef long long fpos64_t;




typedef long long off64_t;



typedef unsigned long useconds_t __attribute__ ((__deprecated__));
# 600 "c:\\mingw\\include\\stdio.h" 2 3
extern __inline__
FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen64 (const char* filename, const char* mode)
{ return fopen (filename, mode); }

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseeko64 (FILE*, off64_t, int);






extern __inline__
off64_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftello64 (FILE * stream)
{
  fpos_t pos;
  if (fgetpos(stream, &pos))
    return -1LL;
  else
   return ((off64_t) pos);
}
# 628 "c:\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwprintf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wprintf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snwprintf (wchar_t*, size_t, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwprintf (FILE*, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnwprintf (wchar_t*, size_t, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwscanf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wscanf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swscanf (const wchar_t*, const wchar_t*, ...);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwc (wchar_t, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetwc (wchar_t, FILE*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swprintf (wchar_t*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswprintf (wchar_t*, const wchar_t*, __gnuc_va_list);



 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetws (wchar_t*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputws (const wchar_t*, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwchar (void);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getws (wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwc (wint_t, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putws (const wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwchar (wint_t);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfdopen(int, const wchar_t *);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfopen (const wchar_t*, const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfreopen (const wchar_t*, const wchar_t*, FILE*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfsopen (const wchar_t*, const wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtmpnam (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtempnam (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wrename (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wremove (const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wperror (const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wpopen (const wchar_t*, const wchar_t*);



int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snwprintf (wchar_t* s, size_t n, const wchar_t* format, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnwprintf (wchar_t* s, size_t n, const wchar_t* format, __gnuc_va_list arg);





int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwscanf (const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwscanf (FILE * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswscanf (const wchar_t * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
# 690 "c:\\mingw\\include\\stdio.h" 3
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wpopen (const wchar_t*, const wchar_t*);






 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putw (int, FILE*);


 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putw (int, FILE*);





# 15 "gen_bitmap.c" 2
# 1 "c:\\mingw\\include\\string.h" 1 3
# 24 "c:\\mingw\\include\\string.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 25 "c:\\mingw\\include\\string.h" 2 3
# 36 "c:\\mingw\\include\\string.h" 3
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memchr (const void*, int, size_t) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memcmp (const void*, const void*, size_t) __attribute__ ((__pure__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memcpy (void*, const void*, size_t);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memmove (void*, const void*, size_t);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memset (void*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcat (char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strchr (const char*, int) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcmp (const char*, const char*) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcpy (char*, const char*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcspn (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strerror (int);

 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strlen (const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncat (char*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncmp (const char*, const char*, size_t) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncpy (char*, const char*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strpbrk (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strrchr (const char*, int) __attribute__ ((__pure__));
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strspn (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strstr (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtok (char*, const char*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strxfrm (char*, const char*, size_t);





 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strerror (const char *);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _memccpy (void*, const void*, int, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _memicmp (const void*, const void*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strdup (const char*) __attribute__ ((__malloc__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strcmpi (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _stricmp (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _stricoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strlwr (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnicmp (const char*, const char*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnset (char*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strrev (char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strset (char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strupr (char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _swab (const char*, char*, size_t);


 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strncoll(const char*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnicoll(const char*, const char*, size_t);
# 90 "c:\\mingw\\include\\string.h" 3
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memccpy (void*, const void*, int, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memicmp (const void*, const void*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strdup (const char*) __attribute__ ((__malloc__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcmpi (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) stricmp (const char*, const char*);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcasecmp (const char*, const char *);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) stricoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strlwr (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strnicmp (const char*, const char*, size_t);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncasecmp (const char *, const char *, size_t);





 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strnset (char*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strrev (char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strset (char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strupr (char*);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swab (const char*, char*, size_t);
# 126 "c:\\mingw\\include\\string.h" 3
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscat (wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcschr (const wchar_t*, wchar_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscpy (wchar_t*, const wchar_t*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscspn (const wchar_t*, const wchar_t*);

 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcslen (const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncat (wchar_t*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncmp(const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncpy(wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcspbrk(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsrchr(const wchar_t*, wchar_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsspn(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsstr(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstok(wchar_t*, const wchar_t*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsxfrm(wchar_t*, const wchar_t*, size_t);
# 152 "c:\\mingw\\include\\string.h" 3
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsdup (const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsicmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsicoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcslwr (wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnicmp (const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnset (wchar_t*, wchar_t, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsrev (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsset (wchar_t*, wchar_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsupr (wchar_t*);


 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsncoll(const wchar_t*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnicoll(const wchar_t*, const wchar_t*, size_t);
# 173 "c:\\mingw\\include\\string.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscmpi (const wchar_t * __ws1, const wchar_t * __ws2);





 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsdup (const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsicmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsicoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcslwr (wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsnicmp (const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsnset (wchar_t*, wchar_t, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsrev (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsset (wchar_t*, wchar_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsupr (wchar_t*);
# 16 "gen_bitmap.c" 2

# 1 "c:\\mingw\\include\\unistd.h" 1 3
# 39 "c:\\mingw\\include\\unistd.h" 3
       
# 40 "c:\\mingw\\include\\unistd.h" 3
# 52 "c:\\mingw\\include\\unistd.h" 3
# 1 "c:\\mingw\\include\\io.h" 1 3
# 41 "c:\\mingw\\include\\io.h" 3
  typedef int intptr_t;




typedef unsigned long _fsize_t;
# 63 "c:\\mingw\\include\\io.h" 3
struct _finddata_t
{
 unsigned attrib;
 time_t time_create;
 time_t time_access;
 time_t time_write;
 _fsize_t size;
 char name[(260)];
};

struct _finddatai64_t {
    unsigned attrib;
    time_t time_create;
    time_t time_access;
    time_t time_write;
    long long size;
    char name[(260)];
};
# 125 "c:\\mingw\\include\\io.h" 3
struct _wfinddata_t {
     unsigned attrib;
     time_t time_create;
     time_t time_access;
     time_t time_write;
     _fsize_t size;
     wchar_t name[(260)];
};

struct _wfinddatai64_t {
    unsigned attrib;
    time_t time_create;
    time_t time_access;
    time_t time_write;
    long long size;
    wchar_t name[(260)];
};
# 188 "c:\\mingw\\include\\io.h" 3

# 239 "c:\\mingw\\include\\io.h" 3
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _findfirst (const char*, struct _finddata_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _findnext (intptr_t, struct _finddata_t*);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _findclose (intptr_t);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _chdir (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getcwd (char*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _mkdir (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _mktemp (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _rmdir (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _chmod (const char*, int);

 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _filelengthi64(int);

 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _findfirsti64(const char*, struct _finddatai64_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _findnexti64(intptr_t, struct _finddatai64_t*);






 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _lseeki64(int, long long, int);
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _telli64(int);
# 298 "c:\\mingw\\include\\io.h" 3
extern __inline__ off64_t lseek64 (int, off64_t, int);
extern __inline__
off64_t lseek64 (int fd, off64_t offset, int whence)
{
  return _lseeki64(fd, (long long) offset, whence);
}







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) chdir (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getcwd (char*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mkdir (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mktemp (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rmdir (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) chmod (const char*, int);





# 340 "c:\\mingw\\include\\io.h" 3


 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _access (const char*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _chsize (int, long);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _close (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _commit(int);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _creat (const char*, int);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _dup (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _dup2 (int, int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _filelength (int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _get_osfhandle (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _isatty (int);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _eof (int);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _locking (int, int, long);

 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _lseek (int, long, int);


 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _open (const char*, int, ...);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _open_osfhandle (intptr_t, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _pipe (int *, unsigned int, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _read (int, void*, unsigned int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _setmode (int, int);


 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) remove (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rename (const char*, const char*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _sopen (const char*, int, int, ...);

 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tell (int);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _umask (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _unlink (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _write (int, const void*, unsigned int);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _waccess(const wchar_t*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wchmod(const wchar_t*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcreat(const wchar_t*, int);

 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfindfirst(const wchar_t*, struct _wfinddata_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfindnext(long, struct _wfinddata_t *);




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wunlink(const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wopen(const wchar_t*, int, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsopen(const wchar_t*, int, int, ...);
 wchar_t * __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wmktemp(wchar_t*);

 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfindfirsti64(const wchar_t*, struct _wfinddatai64_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfindnexti64(long, struct _wfinddatai64_t*);
# 459 "c:\\mingw\\include\\io.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) access (const char*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) chsize (int, long );
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) close (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) creat (const char*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) dup (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) dup2 (int, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) eof (int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) filelength (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) isatty (int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lseek (int, long, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) open (const char*, int, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) read (int, void*, unsigned int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setmode (int, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sopen (const char*, int, int, ...);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tell (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) umask (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) unlink (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) write (int, const void*, unsigned int);
# 505 "c:\\mingw\\include\\io.h" 3

# 53 "c:\\mingw\\include\\unistd.h" 2 3
# 1 "c:\\mingw\\include\\process.h" 1 3
# 18 "c:\\mingw\\include\\process.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdint.h" 1 3 4
# 9 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdint.h" 3 4
# 1 "c:\\mingw\\include\\stdint.h" 1 3 4
# 24 "c:\\mingw\\include\\stdint.h" 3 4
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 25 "c:\\mingw\\include\\stdint.h" 2 3 4


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef long long int_fast64_t;
typedef unsigned long long uint_fast64_t;
# 75 "c:\\mingw\\include\\stdint.h" 3 4
  typedef unsigned int uintptr_t;




typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 10 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdint.h" 2 3 4
# 19 "c:\\mingw\\include\\process.h" 2 3
# 57 "c:\\mingw\\include\\process.h" 3
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _cexit(void);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _c_exit(void);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _cwait (int*, _pid_t, int);

 _pid_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getpid(void);

 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _execl (const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _execle (const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _execlp (const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _execlpe (const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _execv (const char*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _execve (const char*, const char* const*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _execvp (const char*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _execvpe (const char*, const char* const*, const char* const*);

 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _spawnl (int, const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _spawnle (int, const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _spawnlp (int, const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _spawnlpe (int, const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _spawnv (int, const char*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _spawnve (int, const char*, const char* const*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _spawnvp (int, const char*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _spawnvpe (int, const char*, const char* const*, const char* const*);
# 94 "c:\\mingw\\include\\process.h" 3
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
 _beginthread (void (*)(void *), unsigned, void*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _endthread (void);


 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
 _beginthreadex (void *, unsigned, unsigned (__attribute__((__stdcall__)) *) (void *),
    void*, unsigned, unsigned*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _endthreadex (unsigned);
# 111 "c:\\mingw\\include\\process.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) cwait (int*, pid_t, int);
 pid_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getpid (void);

 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) execl (const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) execle (const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) execlp (const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) execlpe (const char*, const char*,...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) execv (const char*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) execve (const char*, const char* const*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) execvp (const char*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) execvpe (const char*, const char* const*, const char* const*);

 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) spawnl (int, const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) spawnle (int, const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) spawnlp (int, const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) spawnlpe (int, const char*, const char*, ...);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) spawnv (int, const char*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) spawnve (int, const char*, const char* const*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) spawnvp (int, const char*, const char* const*);
 intptr_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) spawnvpe (int, const char*, const char* const*, const char* const*);
# 54 "c:\\mingw\\include\\unistd.h" 2 3
# 1 "c:\\mingw\\include\\getopt.h" 1 3
# 39 "c:\\mingw\\include\\getopt.h" 3
extern int optind;
extern int optopt;
extern int opterr;


extern char *optarg;

extern int getopt( int, char * const [], const char * );
# 55 "c:\\mingw\\include\\unistd.h" 2 3
# 78 "c:\\mingw\\include\\unistd.h" 3
extern __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
int __mingw_sleep( unsigned long, unsigned long );
# 95 "c:\\mingw\\include\\unistd.h" 3
# 1 "c:\\mingw\\include\\parts\\time.h" 1 3
# 65 "c:\\mingw\\include\\parts\\time.h" 3
struct timespec
{



  long long tv_sec;
  long tv_nsec;
};
# 96 "c:\\mingw\\include\\unistd.h" 2 3








__attribute__((__cdecl__)) __attribute__ ((__nothrow__))
int nanosleep( const struct timespec *, struct timespec * );
# 124 "c:\\mingw\\include\\unistd.h" 3
typedef unsigned long useconds_t __attribute__ ((__deprecated__));
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) usleep( useconds_t )__attribute__ ((__deprecated__));
# 138 "c:\\mingw\\include\\unistd.h" 3
unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sleep( unsigned );
# 153 "c:\\mingw\\include\\unistd.h" 3
int __attribute__((__cdecl__)) ftruncate( int, off_t );







# 18 "gen_bitmap.c" 2

# 1 "c:\\mingw\\include\\fcntl.h" 1 3
# 20 "gen_bitmap.c" 2


# 1 "c:\\mingw\\include\\sys\\stat.h" 1 3
# 21 "c:\\mingw\\include\\sys\\stat.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 22 "c:\\mingw\\include\\sys\\stat.h" 2 3
# 86 "c:\\mingw\\include\\sys\\stat.h" 3
struct _stat
{
 _dev_t st_dev;
 _ino_t st_ino;
 _mode_t st_mode;
 short st_nlink;
 short st_uid;
 short st_gid;
 _dev_t st_rdev;
 _off_t st_size;
 time_t st_atime;

 time_t st_mtime;
 time_t st_ctime;
};



struct stat
{
 dev_t st_dev;
 ino_t st_ino;
 mode_t st_mode;
 short st_nlink;
 short st_uid;
 short st_gid;
 dev_t st_rdev;
 off_t st_size;
 time_t st_atime;

 time_t st_mtime;
 time_t st_ctime;
};



struct _stati64 {
    _dev_t st_dev;
    _ino_t st_ino;
    _mode_t st_mode;
    short st_nlink;
    short st_uid;
    short st_gid;
    _dev_t st_rdev;
    long long st_size;
    time_t st_atime;
    time_t st_mtime;
    time_t st_ctime;
};
# 202 "c:\\mingw\\include\\sys\\stat.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fstat (int, struct _stat*);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _chmod (const char*, int);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _stat (const char*, struct _stat*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fstat (int, struct stat*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) chmod (const char*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) stat (const char*, struct stat*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fstati64(int, struct _stati64 *);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _stati64(const char *, struct _stati64 *);
# 251 "c:\\mingw\\include\\sys\\stat.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wstat(const wchar_t*, struct _stat*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wstati64 (const wchar_t*, struct _stati64*);
# 23 "gen_bitmap.c" 2





# 1 "ext2_fs.h" 1
# 19 "ext2_fs.h"
# 1 "../../lib/ext2fs/ext2_types.h" 1
# 16 "../../lib/ext2fs/ext2_types.h"
typedef unsigned char __u8;
# 25 "../../lib/ext2fs/ext2_types.h"
typedef signed char __s8;
# 38 "../../lib/ext2fs/ext2_types.h"
typedef unsigned short __u16;
# 56 "../../lib/ext2fs/ext2_types.h"
typedef short __s16;
# 71 "../../lib/ext2fs/ext2_types.h"
typedef unsigned int __u32;
# 93 "../../lib/ext2fs/ext2_types.h"
typedef int __s32;
# 118 "../../lib/ext2fs/ext2_types.h"
typedef unsigned long long __u64;
# 141 "../../lib/ext2fs/ext2_types.h"
typedef __signed__ long long __s64;
# 180 "../../lib/ext2fs/ext2_types.h"
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u64 __le64;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u64 __be64;
# 20 "ext2_fs.h" 2
# 127 "ext2_fs.h"
struct ext2_acl_header
{
 __u32 aclh_size;
 __u32 aclh_file_count;
 __u32 aclh_acle_count;
 __u32 aclh_first_acle;
};

struct ext2_acl_entry
{
 __u32 acle_size;
 __u16 acle_perms;
 __u16 acle_type;
 __u16 acle_tag;
 __u16 acle_pad1;
 __u32 acle_next;

};




struct ext2_group_desc
{
 __u32 bg_block_bitmap;
 __u32 bg_inode_bitmap;
 __u32 bg_inode_table;
 __u16 bg_free_blocks_count;
 __u16 bg_free_inodes_count;
 __u16 bg_used_dirs_count;
 __u16 bg_flags;
 __u32 bg_exclude_bitmap_lo;
 __u16 bg_block_bitmap_csum_lo;
 __u16 bg_inode_bitmap_csum_lo;
 __u16 bg_itable_unused;
 __u16 bg_checksum;
};




struct ext4_group_desc
{
 __u32 bg_block_bitmap;
 __u32 bg_inode_bitmap;
 __u32 bg_inode_table;
 __u16 bg_free_blocks_count;
 __u16 bg_free_inodes_count;
 __u16 bg_used_dirs_count;
 __u16 bg_flags;
 __u32 bg_exclude_bitmap_lo;
 __u16 bg_block_bitmap_csum_lo;
 __u16 bg_inode_bitmap_csum_lo;
 __u16 bg_itable_unused;
 __u16 bg_checksum;
 __u32 bg_block_bitmap_hi;
 __u32 bg_inode_bitmap_hi;
 __u32 bg_inode_table_hi;
 __u16 bg_free_blocks_count_hi;
 __u16 bg_free_inodes_count_hi;
 __u16 bg_used_dirs_count_hi;
 __u16 bg_itable_unused_hi;
 __u32 bg_exclude_bitmap_hi;
 __u16 bg_block_bitmap_csum_hi;
 __u16 bg_inode_bitmap_csum_hi;
 __u32 bg_reserved;
};
# 218 "ext2_fs.h"
struct ext2_dx_root_info {
 __u32 reserved_zero;
 __u8 hash_version;
 __u8 info_length;
 __u8 indirect_levels;
 __u8 unused_flags;
};
# 235 "ext2_fs.h"
struct ext2_dx_entry {
 __le32 hash;
 __le32 block;
};

struct ext2_dx_countlimit {
 __le16 limit;
 __le16 count;
};




struct ext2_dx_tail {
 __le32 dt_reserved;
 __le32 dt_checksum;
};
# 339 "ext2_fs.h"
struct ext2_new_group_input {
 __u32 group;
 __u32 block_bitmap;
 __u32 inode_bitmap;
 __u32 inode_table;
 __u32 blocks_count;
 __u16 reserved_blocks;
 __u16 unused;
};

struct ext4_new_group_input {
 __u32 group;
 __u64 block_bitmap;
 __u64 inode_bitmap;
 __u64 inode_table;
 __u32 blocks_count;
 __u16 reserved_blocks;
 __u16 unused;
};
# 377 "ext2_fs.h"
struct ext2_inode {
 __u16 i_mode;
 __u16 i_uid;
 __u32 i_size;
 __u32 i_atime;
 __u32 i_ctime;
 __u32 i_mtime;
 __u32 i_dtime;
 __u16 i_gid;
 __u16 i_links_count;
 __u32 i_blocks;
 __u32 i_flags;
 union {
  struct {
   __u32 l_i_version;
  } linux1;
  struct {
   __u32 h_i_translator;
  } hurd1;
 } osd1;
 __u32 i_block[(((12 + 1) + 1) + 1)];
 __u32 i_generation;
 __u32 i_file_acl;
 __u32 i_size_high;
 __u32 i_faddr;
 union {
  struct {
   __u16 l_i_blocks_hi;
   __u16 l_i_file_acl_high;
   __u16 l_i_uid_high;
   __u16 l_i_gid_high;
   __u16 l_i_checksum_lo;
   __u16 l_i_reserved;
  } linux2;
  struct {
   __u8 h_i_frag;
   __u8 h_i_fsize;
   __u16 h_i_mode_high;
   __u16 h_i_uid_high;
   __u16 h_i_gid_high;
   __u32 h_i_author;
  } hurd2;
 } osd2;
};




struct ext2_inode_large {
 __u16 i_mode;
 __u16 i_uid;
 __u32 i_size;
 __u32 i_atime;
 __u32 i_ctime;
 __u32 i_mtime;
 __u32 i_dtime;
 __u16 i_gid;
 __u16 i_links_count;
 __u32 i_blocks;
 __u32 i_flags;
 union {
  struct {
   __u32 l_i_version;
  } linux1;
  struct {
   __u32 h_i_translator;
  } hurd1;
 } osd1;
 __u32 i_block[(((12 + 1) + 1) + 1)];
 __u32 i_generation;
 __u32 i_file_acl;
 __u32 i_size_high;
 __u32 i_faddr;
 union {
  struct {
   __u16 l_i_blocks_hi;
   __u16 l_i_file_acl_high;
   __u16 l_i_uid_high;
   __u16 l_i_gid_high;
   __u16 l_i_checksum_lo;
   __u16 l_i_reserved;
  } linux2;
  struct {
   __u8 h_i_frag;
   __u8 h_i_fsize;
   __u16 h_i_mode_high;
   __u16 h_i_uid_high;
   __u16 h_i_gid_high;
   __u32 h_i_author;
  } hurd2;
 } osd2;
 __u16 i_extra_isize;
 __u16 i_checksum_hi;
 __u32 i_ctime_extra;
 __u32 i_mtime_extra;
 __u32 i_atime_extra;
 __u32 i_crtime;
 __u32 i_crtime_extra;
 __u32 i_version_hi;
};
# 592 "ext2_fs.h"
struct ext4_encryption_policy {
  char version;
  char contents_encryption_mode;
  char filenames_encryption_mode;
  char flags;
  char master_key_descriptor[8];
} __attribute__((__packed__));

struct ext4_encryption_key {
        __u32 mode;
        char raw[64];
        __u32 size;
} __attribute__((__packed__));




struct ext2_super_block {
 __u32 s_inodes_count;
 __u32 s_blocks_count;
 __u32 s_r_blocks_count;
 __u32 s_free_blocks_count;
 __u32 s_free_inodes_count;
 __u32 s_first_data_block;
 __u32 s_log_block_size;
 __u32 s_log_cluster_size;
 __u32 s_blocks_per_group;
 __u32 s_clusters_per_group;
 __u32 s_inodes_per_group;
 __u32 s_mtime;
 __u32 s_wtime;
 __u16 s_mnt_count;
 __s16 s_max_mnt_count;
 __u16 s_magic;
 __u16 s_state;
 __u16 s_errors;
 __u16 s_minor_rev_level;
 __u32 s_lastcheck;
 __u32 s_checkinterval;
 __u32 s_creator_os;
 __u32 s_rev_level;
 __u16 s_def_resuid;
 __u16 s_def_resgid;
# 648 "ext2_fs.h"
 __u32 s_first_ino;
 __u16 s_inode_size;
 __u16 s_block_group_nr;
 __u32 s_feature_compat;
 __u32 s_feature_incompat;
 __u32 s_feature_ro_compat;
 __u8 s_uuid[16];
 char s_volume_name[16];
 char s_last_mounted[64];
 __u32 s_algorithm_usage_bitmap;




 __u8 s_prealloc_blocks;
 __u8 s_prealloc_dir_blocks;
 __u16 s_reserved_gdt_blocks;



 __u8 s_journal_uuid[16];
 __u32 s_journal_inum;
 __u32 s_journal_dev;
 __u32 s_last_orphan;
 __u32 s_hash_seed[4];
 __u8 s_def_hash_version;
 __u8 s_jnl_backup_type;
 __u16 s_desc_size;
 __u32 s_default_mount_opts;
 __u32 s_first_meta_bg;
 __u32 s_mkfs_time;
 __u32 s_jnl_blocks[17];
 __u32 s_blocks_count_hi;
 __u32 s_r_blocks_count_hi;
 __u32 s_free_blocks_hi;
 __u16 s_min_extra_isize;
 __u16 s_want_extra_isize;
 __u32 s_flags;
 __u16 s_raid_stride;
 __u16 s_mmp_update_interval;
 __u64 s_mmp_block;
 __u32 s_raid_stripe_width;
 __u8 s_log_groups_per_flex;
 __u8 s_checksum_type;
 __u8 s_encryption_level;
 __u8 s_reserved_pad;
 __u64 s_kbytes_written;
 __u32 s_snapshot_inum;
 __u32 s_snapshot_id;
 __u64 s_snapshot_r_blocks_count;

 __u32 s_snapshot_list;

 __u32 s_error_count;
 __u32 s_first_error_time;
 __u32 s_first_error_ino;
 __u64 s_first_error_block;
 __u8 s_first_error_func[32];
 __u32 s_first_error_line;
 __u32 s_last_error_time;
 __u32 s_last_error_ino;
 __u32 s_last_error_line;
 __u64 s_last_error_block;
 __u8 s_last_error_func[32];

 __u8 s_mount_opts[64];
 __u32 s_usr_quota_inum;
 __u32 s_grp_quota_inum;
 __u32 s_overhead_blocks;
 __u32 s_backup_bgs[2];
 __u8 s_encrypt_algos[4];
 __u8 s_encrypt_pw_salt[16];
 __le32 s_lpf_ino;
 __le32 s_reserved[100];
 __u32 s_checksum;
};
# 847 "ext2_fs.h"
struct ext2_dir_entry {
 __u32 inode;
 __u16 rec_len;
 __u16 name_len;
 char name[255];
};
# 868 "ext2_fs.h"
struct ext2_dir_entry_2 {
 __u32 inode;
 __u16 rec_len;
 __u8 name_len;
 __u8 file_type;
 char name[255];
};





struct ext2_dir_entry_tail {
 __u32 det_reserved_zero1;
 __u16 det_rec_len;
 __u16 det_reserved_name_len;
 __u32 det_checksum;
};
# 947 "ext2_fs.h"
struct mmp_struct {
 __u32 mmp_magic;
 __u32 mmp_seq;
 __u64 mmp_time;
 char mmp_nodename[64];
 char mmp_bdevname[32];
 __u16 mmp_check_interval;
 __u16 mmp_pad1;
 __u32 mmp_pad2[226];
 __u32 mmp_checksum;
};
# 29 "gen_bitmap.c" 2
# 1 "ext2fsP.h" 1
# 12 "ext2fsP.h"
# 1 "ext2fs.h" 1
# 55 "ext2fs.h"
# 1 "c:\\mingw\\include\\stdlib.h" 1 3
# 22 "c:\\mingw\\include\\stdlib.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 23 "c:\\mingw\\include\\stdlib.h" 2 3
# 60 "c:\\mingw\\include\\stdlib.h" 3

# 70 "c:\\mingw\\include\\stdlib.h" 3
extern int _argc;
extern char** _argv;




extern int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argc(void);
extern char*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argv(void);
extern wchar_t*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___wargv(void);
# 111 "c:\\mingw\\include\\stdlib.h" 3
   extern __attribute__ ((__dllimport__)) int __mb_cur_max;
# 136 "c:\\mingw\\include\\stdlib.h" 3
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _errno(void);


 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __doserrno(void);
# 148 "c:\\mingw\\include\\stdlib.h" 3
  extern char *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__environ(void);
  extern wchar_t *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wenviron(void);
# 171 "c:\\mingw\\include\\stdlib.h" 3
  extern __attribute__ ((__dllimport__)) int _sys_nerr;
# 195 "c:\\mingw\\include\\stdlib.h" 3
extern __attribute__ ((__dllimport__)) char* _sys_errlist[];
# 208 "c:\\mingw\\include\\stdlib.h" 3
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__osver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winmajor(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winminor(void);







extern __attribute__ ((__dllimport__)) unsigned int _osver;
extern __attribute__ ((__dllimport__)) unsigned int _winver;
extern __attribute__ ((__dllimport__)) unsigned int _winmajor;
extern __attribute__ ((__dllimport__)) unsigned int _winminor;
# 259 "c:\\mingw\\include\\stdlib.h" 3
 char** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__pgmptr(void);

 wchar_t** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wpgmptr(void);
# 292 "c:\\mingw\\include\\stdlib.h" 3
extern __attribute__ ((__dllimport__)) int _fmode;
# 302 "c:\\mingw\\include\\stdlib.h" 3
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atof (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoi (const char*);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atol (const char*);

 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtof (const wchar_t *);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi (const wchar_t *);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtol (const wchar_t *);


double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __strtod (const char*, char**);
extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
strtod (const char* __restrict__ __nptr, char** __restrict__ __endptr);
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof (const char * __restrict__, char ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold (const char * __restrict__, char ** __restrict__);




 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtol (const char*, char**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoul (const char*, char**, int);



 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstol (const wchar_t*, wchar_t**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstoul (const wchar_t*, wchar_t**, int);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstod (const wchar_t*, wchar_t**);

float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstof( const wchar_t * __restrict__, wchar_t ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstold (const wchar_t * __restrict__, wchar_t ** __restrict__);


 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wgetenv(const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wputenv(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsearchenv(const wchar_t*, const wchar_t*, wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsystem(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wmakepath(wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsplitpath (const wchar_t*, wchar_t*, wchar_t*, wchar_t*, wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfullpath (wchar_t*, const wchar_t*, size_t);




 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstombs (char*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wctomb (char*, wchar_t);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mblen (const char*, size_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbstowcs (wchar_t*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbtowc (wchar_t*, const char*, size_t);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rand (void);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) srand (unsigned int);

 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) calloc (size_t, size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) malloc (size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) realloc (void*, size_t);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) free (void*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abort (void) __attribute__ ((__noreturn__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit (int) __attribute__ ((__noreturn__));


int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atexit (void (*)(void));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) system (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getenv (const char*);


 void* __attribute__((__cdecl__)) bsearch (const void*, const void*, size_t, size_t,
          int (*)(const void*, const void*));
 void __attribute__((__cdecl__)) qsort(void*, size_t, size_t,
      int (*)(const void*, const void*));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abs (int) __attribute__ ((__const__));
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) labs (long) __attribute__ ((__const__));
# 384 "c:\\mingw\\include\\stdlib.h" 3
typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

 div_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) div (int, int) __attribute__ ((__const__));
 ldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ldiv (long, long) __attribute__ ((__const__));







 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _beep (unsigned int, unsigned int) __attribute__ ((__deprecated__));

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _seterrormode (int) __attribute__ ((__deprecated__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _sleep (unsigned long) __attribute__ ((__deprecated__));

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit (int) __attribute__ ((__noreturn__));



typedef int (* _onexit_t)(void);
_onexit_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _onexit( _onexit_t );

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _searchenv (const char*, const char*, char*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _gcvt (double, int, char*);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _makepath (char*, const char*, const char*, const char*, const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _splitpath (const char*, char*, char*, char*, char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fullpath (char*, const char*, size_t);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltoa (long, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultoa(unsigned long, char*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itow (int, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltow (long, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultow (unsigned long, wchar_t*, int);


 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _atoi64(const char *);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64toa(long long, char *, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64toa(unsigned long long, char *, int);
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi64(const wchar_t *);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64tow(long long, wchar_t *, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64tow(unsigned long long, wchar_t *, int);

 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotl)(unsigned int, int) __attribute__ ((__const__));
 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotr)(unsigned int, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotl)(unsigned long, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotr)(unsigned long, int) __attribute__ ((__const__));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _set_error_mode (int);
# 476 "c:\\mingw\\include\\stdlib.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) searchenv (const char*, const char*, char*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ltoa (long, char*, int);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gcvt (double, int, char*);
# 496 "c:\\mingw\\include\\stdlib.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _Exit(int) __attribute__ ((__noreturn__));





typedef struct { long long quot, rem; } lldiv_t;

lldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lldiv (long long, long long) __attribute__ ((__const__));

long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) llabs(long long);
# 516 "c:\\mingw\\include\\stdlib.h" 3
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoll (const char* __restrict__, char** __restrict, int);
unsigned long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoull (const char* __restrict__, char** __restrict__, int);


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoll (const char *);


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wtoll (const wchar_t *);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltoa (long long, char *, int);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltoa (unsigned long long , char *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltow (long long, wchar_t *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltow (unsigned long long, wchar_t *, int);
# 567 "c:\\mingw\\include\\stdlib.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mkstemp( char * );
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_mkstemp( int, char * );
# 609 "c:\\mingw\\include\\stdlib.h" 3
extern __inline__ __attribute__((__always_inline__))
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mkstemp( char *__filename_template )
{ return __mingw_mkstemp( 0, __filename_template ); }
# 620 "c:\\mingw\\include\\stdlib.h" 3
char * __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mkdtemp( char * );
char * __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_mkdtemp( char * );

extern __inline__ __attribute__((__always_inline__))
char * __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mkdtemp( char *__dirname_template )
{ return __mingw_mkdtemp( __dirname_template ); }




# 56 "ext2fs.h" 2

# 1 "c:\\mingw\\include\\errno.h" 1 3
# 91 "c:\\mingw\\include\\errno.h" 3
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _errno(void);
# 58 "ext2fs.h" 2






# 1 "../../lib/ext2fs/ext2_types.h" 1
# 65 "ext2fs.h" 2
# 1 "../../lib/ext2fs/ext2_fs.h" 1
# 66 "ext2fs.h" 2
# 1 "../../lib/ext2fs/ext3_extents.h" 1
# 28 "../../lib/ext2fs/ext3_extents.h"
struct ext3_extent_tail {
 __le32 et_checksum;
};





struct ext3_extent {
 __le32 ee_block;
 __le16 ee_len;
 __le16 ee_start_hi;
 __le32 ee_start;
};





struct ext3_extent_idx {
 __le32 ei_block;
 __le32 ei_leaf;

 __le16 ei_leaf_hi;
 __le16 ei_unused;
};




struct ext3_extent_header {
 __le16 eh_magic;
 __le16 eh_entries;
 __le16 eh_max;
 __le16 eh_depth;
 __le32 eh_generation;
};
# 73 "../../lib/ext2fs/ext3_extents.h"
struct ext3_ext_path {
 __u32 p_block;
 __u16 p_depth;
 struct ext3_extent *p_ext;
 struct ext3_extent_idx *p_idx;
 struct ext3_extent_header *p_hdr;
 struct buffer_head *p_bh;
};
# 67 "ext2fs.h" 2


typedef __u32 ext2_ino_t;
typedef __u32 blk_t;
typedef __u64 blk64_t;
typedef __u32 dgrp_t;
typedef __u32 ext2_off_t;
typedef __u64 ext2_off64_t;
typedef __s64 e2_blkcnt_t;
typedef __u32 ext2_dirhash_t;







# 1 "../../lib/et/com_err.h" 1
# 19 "../../lib/et/com_err.h"
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 20 "../../lib/et/com_err.h" 2
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdarg.h" 1 3 4
# 98 "c:\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 21 "../../lib/et/com_err.h" 2

typedef long long errcode_t;

struct error_table {
 char const * const * msgs;
 long base;
 int n_msgs;
};
struct et_list;

extern void com_err (const char *, long, const char *, ...)
 __attribute__((format(printf, 3, 4)));

extern void com_err_va (const char *whoami, errcode_t code, const char *fmt,
   va_list args)
 __attribute__((format(printf, 3, 0)));

extern char const *error_message (errcode_t);
extern void (*com_err_hook) (const char *, long, const char *, va_list);
extern void (*set_com_err_hook (void (*) (const char *, errcode_t,
       const char *, va_list)))
 (const char *, errcode_t, const char *, va_list);
extern void (*reset_com_err_hook (void)) (const char *, errcode_t,
       const char *, va_list);
extern int init_error_table(const char * const *msgs, long base, int count);
extern char *(*set_com_err_gettext (char *(*) (const char *)))
 (const char *);

extern errcode_t add_error_table(const struct error_table * et);
extern errcode_t remove_error_table(const struct error_table * et);
extern void add_to_error_table(struct et_list *new_table);


extern const char *com_right(struct et_list *list, long code);
extern const char *com_right_r(struct et_list *list, long code, char *str, size_t len);
extern void initialize_error_table_r(struct et_list **list,
         const char **messages,
         int num_errors,
         long base);
extern void free_error_table(struct et_list *et);


extern int et_list_lock(void);
extern int et_list_unlock(void);
# 85 "ext2fs.h" 2
# 1 "../../lib/ext2fs/ext2_io.h" 1
# 19 "../../lib/ext2fs/ext2_io.h"
typedef long long ext2_loff_t;





ext2_loff_t ext2fs_llseek (int, ext2_loff_t, int);

typedef struct struct_io_manager *io_manager;
typedef struct struct_io_channel *io_channel;
typedef struct struct_io_stats *io_stats;







struct struct_io_channel {
 errcode_t magic;
 io_manager manager;
 char *name;
 int block_size;
 errcode_t (*read_error)(io_channel channel,
          unsigned long block,
          int count,
          void *data,
          size_t size,
          int actual_bytes_read,
          errcode_t error);
 errcode_t (*write_error)(io_channel channel,
           unsigned long block,
           int count,
           const void *data,
           size_t size,
           int actual_bytes_written,
           errcode_t error);
 int refcount;
 int flags;
 long reserved[14];
 void *private_data;
 void *app_data;
 int align;
};

struct struct_io_stats {
 int num_fields;
 int reserved;
 unsigned long long bytes_read;
 unsigned long long bytes_written;
};

struct struct_io_manager {
 errcode_t magic;
 const char *name;
 errcode_t (*open)(const char *name, int flags, io_channel *channel);
 errcode_t (*close)(io_channel channel);
 errcode_t (*set_blksize)(io_channel channel, int blksize);
 errcode_t (*read_blk)(io_channel channel, unsigned long block,
         int count, void *data);
 errcode_t (*write_blk)(io_channel channel, unsigned long block,
          int count, const void *data);
 errcode_t (*flush)(io_channel channel);
 errcode_t (*write_byte)(io_channel channel, unsigned long offset,
    int count, const void *data);
 errcode_t (*set_option)(io_channel channel, const char *option,
    const char *arg);
 errcode_t (*get_stats)(io_channel channel, io_stats *io_stats);
 errcode_t (*read_blk64)(io_channel channel, unsigned long long block,
     int count, void *data);
 errcode_t (*write_blk64)(io_channel channel, unsigned long long block,
     int count, const void *data);
 errcode_t (*discard)(io_channel channel, unsigned long long block,
        unsigned long long count);
 errcode_t (*cache_readahead)(io_channel channel,
         unsigned long long block,
         unsigned long long count);
 errcode_t (*zeroout)(io_channel channel, unsigned long long block,
        unsigned long long count);
 long reserved[14];
};
# 116 "../../lib/ext2fs/ext2_io.h"
extern errcode_t io_channel_set_options(io_channel channel,
     const char *options);
extern errcode_t io_channel_write_byte(io_channel channel,
           unsigned long offset,
           int count, const void *data);
extern errcode_t io_channel_read_blk64(io_channel channel,
           unsigned long long block,
           int count, void *data);
extern errcode_t io_channel_write_blk64(io_channel channel,
     unsigned long long block,
     int count, const void *data);
extern errcode_t io_channel_discard(io_channel channel,
        unsigned long long block,
        unsigned long long count);
extern errcode_t io_channel_zeroout(io_channel channel,
        unsigned long long block,
        unsigned long long count);
extern errcode_t io_channel_alloc_buf(io_channel channel,
          int count, void *ptr);
extern errcode_t io_channel_cache_readahead(io_channel io,
         unsigned long long block,
         unsigned long long count);


extern io_manager unix_io_manager;


extern io_manager undo_io_manager;
extern errcode_t set_undo_io_backing_manager(io_manager manager);
extern errcode_t set_undo_io_backup_file(char *file_name);


extern io_manager test_io_manager, test_io_backing_manager;
extern void (*test_io_cb_read_blk)
 (unsigned long block, int count, errcode_t err);
extern void (*test_io_cb_write_blk)
 (unsigned long block, int count, errcode_t err);
extern void (*test_io_cb_read_blk64)
 (unsigned long long block, int count, errcode_t err);
extern void (*test_io_cb_write_blk64)
 (unsigned long long block, int count, errcode_t err);
extern void (*test_io_cb_set_blksize)
 (int blksize, errcode_t err);
# 86 "ext2fs.h" 2
# 1 "../../lib/ext2fs/ext2_err.h" 1





# 1 "../../lib/et/com_err.h" 1
# 7 "../../lib/ext2fs/ext2_err.h" 2
# 182 "../../lib/ext2fs/ext2_err.h"
extern const struct error_table et_ext2_error_table;
extern void initialize_ext2_error_table(void);


extern void initialize_ext2_error_table_r(struct et_list **list);
# 87 "ext2fs.h" 2
# 1 "../../lib/ext2fs/ext2_ext_attr.h" 1
# 18 "../../lib/ext2fs/ext2_ext_attr.h"
struct ext2_ext_attr_header {
 __u32 h_magic;
 __u32 h_refcount;
 __u32 h_blocks;
 __u32 h_hash;
 __u32 h_checksum;

 __u32 h_reserved[3];
};

struct ext2_ext_attr_entry {
 __u8 e_name_len;
 __u8 e_name_index;
 __u16 e_value_offs;
 __u32 e_value_block;
 __u32 e_value_size;
 __u32 e_hash;



};
# 88 "ext2fs.h" 2
# 99 "ext2fs.h"
typedef struct struct_ext2_filsys *ext2_filsys;





typedef struct ext2fs_struct_generic_bitmap *ext2fs_generic_bitmap;
typedef struct ext2fs_struct_generic_bitmap *ext2fs_inode_bitmap;
typedef struct ext2fs_struct_generic_bitmap *ext2fs_block_bitmap;
# 116 "ext2fs.h"
typedef struct ext2_struct_u32_list *ext2_badblocks_list;
typedef struct ext2_struct_u32_iterate *ext2_badblocks_iterate;

typedef struct ext2_struct_u32_list *ext2_u32_list;
typedef struct ext2_struct_u32_iterate *ext2_u32_iterate;


typedef struct ext2_struct_u32_list *badblocks_list;
typedef struct ext2_struct_u32_iterate *badblocks_iterate;






struct ext2_db_entry2 {
 ext2_ino_t ino;
 blk64_t blk;
 e2_blkcnt_t blockcnt;
};


struct ext2_db_entry {
 ext2_ino_t ino;
 blk_t blk;
 int blockcnt;
};

typedef struct ext2_struct_dblist *ext2_dblist;
# 160 "ext2fs.h"
typedef struct ext2_file *ext2_file_t;
# 205 "ext2fs.h"
struct opaque_ext2_group_desc;

struct struct_ext2_filsys {
 errcode_t magic;
 io_channel io;
 int flags;
 char * device_name;
 struct ext2_super_block * super;
 unsigned int blocksize;
 int fragsize;
 dgrp_t group_desc_count;
 unsigned long desc_blocks;
 struct opaque_ext2_group_desc * group_desc;
 unsigned int inode_blocks_per_group;
 ext2fs_inode_bitmap inode_map;
 ext2fs_block_bitmap block_map;

 errcode_t (*get_blocks)(ext2_filsys fs, ext2_ino_t ino, blk_t *blocks);
 errcode_t (*check_directory)(ext2_filsys fs, ext2_ino_t ino);
 errcode_t (*write_bitmaps)(ext2_filsys fs);
 errcode_t (*read_inode)(ext2_filsys fs, ext2_ino_t ino,
    struct ext2_inode *inode);
 errcode_t (*write_inode)(ext2_filsys fs, ext2_ino_t ino,
    struct ext2_inode *inode);
 ext2_badblocks_list badblocks;
 ext2_dblist dblist;
 __u32 stride;
 struct ext2_super_block * orig_super;
 struct ext2_image_hdr * image_header;
 __u32 umask;
 time_t now;
 int cluster_ratio_bits;
 __u16 default_bitmap_type;
 __u16 pad;



 __u32 reserved[5];




 void * priv_data;




 struct ext2_inode_cache *icache;
 io_channel image_io;




 errcode_t (*get_alloc_block)(ext2_filsys fs, blk64_t goal,
         blk64_t *ret);
 void (*block_alloc_stats)(ext2_filsys fs, blk64_t blk, int inuse);




 void *mmp_buf;
 void *mmp_cmp;
 int mmp_fd;




 long mmp_last_written;


 struct ext2fs_progress_ops *progress_ops;


 __u32 csum_seed;

 io_channel journal_io;
 char *journal_name;


 errcode_t (*new_range)(ext2_filsys fs, int flags, blk64_t goal,
          blk64_t len, blk64_t *pblk, blk64_t *plen);
 void (*block_alloc_stats_range)(ext2_filsys fs, blk64_t blk, blk_t num,
     int inuse);
};




# 1 "../../lib/ext2fs/bitops.h" 1
# 48 "../../lib/ext2fs/bitops.h"
extern const char *ext2fs_block_string;
extern const char *ext2fs_inode_string;
extern const char *ext2fs_mark_string;
extern const char *ext2fs_unmark_string;
extern const char *ext2fs_test_string;
extern void ext2fs_warn_bitmap(errcode_t errcode, unsigned long arg,
          const char *description);
extern void ext2fs_warn_bitmap2(ext2fs_generic_bitmap bitmap,
    int code, unsigned long arg);
# 104 "../../lib/ext2fs/bitops.h"
extern void ext2fs_mark_block_bitmap_range(ext2fs_block_bitmap bitmap,
        blk_t block, int num);
extern void ext2fs_unmark_block_bitmap_range(ext2fs_block_bitmap bitmap,
          blk_t block, int num);
extern int ext2fs_test_block_bitmap_range(ext2fs_block_bitmap bitmap,
       blk_t block, int num);
extern int ext2fs_test_inode_bitmap_range(ext2fs_inode_bitmap bitmap,
       ino_t inode, int num);
extern int ext2fs_mark_generic_bitmap(ext2fs_generic_bitmap bitmap,
      __u32 bitno);
extern int ext2fs_unmark_generic_bitmap(ext2fs_generic_bitmap bitmap,
        blk_t bitno);
extern int ext2fs_test_generic_bitmap(ext2fs_generic_bitmap bitmap,
          blk_t bitno);
extern int ext2fs_test_block_bitmap_range(ext2fs_block_bitmap bitmap,
       blk_t block, int num);
extern void ext2fs_set_bitmap_padding(ext2fs_generic_bitmap map);
extern __u32 ext2fs_get_generic_bitmap_start(ext2fs_generic_bitmap bitmap);
extern __u32 ext2fs_get_generic_bitmap_end(ext2fs_generic_bitmap bitmap);
# 187 "../../lib/ext2fs/bitops.h"
extern void ext2fs_clear_generic_bmap(ext2fs_generic_bitmap bitmap);
extern errcode_t ext2fs_compare_generic_bmap(errcode_t neq,
          ext2fs_generic_bitmap bm1,
          ext2fs_generic_bitmap bm2);
extern void ext2fs_set_generic_bmap_padding(ext2fs_generic_bitmap bmap);
extern int ext2fs_mark_generic_bmap(ext2fs_generic_bitmap bitmap,
        blk64_t bitno);
extern int ext2fs_unmark_generic_bmap(ext2fs_generic_bitmap bitmap,
          blk64_t bitno);
extern int ext2fs_test_generic_bmap(ext2fs_generic_bitmap bitmap,
        blk64_t bitno);
extern int ext2fs_test_block_bitmap_range2(ext2fs_block_bitmap bitmap,
        blk64_t block, unsigned int num);
extern __u64 ext2fs_get_generic_bmap_start(ext2fs_generic_bitmap bitmap);
extern __u64 ext2fs_get_generic_bmap_end(ext2fs_generic_bitmap bitmap);
extern int ext2fs_test_block_bitmap_range2(ext2fs_block_bitmap bitmap,
        blk64_t block, unsigned int num);
extern void ext2fs_mark_block_bitmap_range2(ext2fs_block_bitmap bitmap,
         blk64_t block, unsigned int num);
extern void ext2fs_unmark_block_bitmap_range2(ext2fs_block_bitmap bitmap,
           blk64_t block, unsigned int num);
extern errcode_t ext2fs_find_first_zero_generic_bmap(ext2fs_generic_bitmap bitmap,
           __u64 start, __u64 end,
           __u64 *out);
extern errcode_t ext2fs_find_first_set_generic_bmap(ext2fs_generic_bitmap bitmap,
          __u64 start, __u64 end,
          __u64 *out);
# 255 "../../lib/ext2fs/bitops.h"
extern __inline__ void ext2fs_fast_set_bit(unsigned int nr,void * addr)
{
 unsigned char *ADDR = (unsigned char *) addr;

 ADDR += nr >> 3;
 *ADDR |= (unsigned char) (1 << (nr & 0x07));
}

extern __inline__ void ext2fs_fast_clear_bit(unsigned int nr, void * addr)
{
 unsigned char *ADDR = (unsigned char *) addr;

 ADDR += nr >> 3;
 *ADDR &= (unsigned char) ~(1 << (nr & 0x07));
}


extern __inline__ void ext2fs_fast_set_bit64(__u64 nr, void * addr)
{
 unsigned char *ADDR = (unsigned char *) addr;

 ADDR += nr >> 3;
 *ADDR |= (unsigned char) (1 << (nr & 0x07));
}

extern __inline__ void ext2fs_fast_clear_bit64(__u64 nr, void * addr)
{
 unsigned char *ADDR = (unsigned char *) addr;

 ADDR += nr >> 3;
 *ADDR &= (unsigned char) ~(1 << (nr & 0x07));
}
# 306 "../../lib/ext2fs/bitops.h"
struct __dummy_h { unsigned long a[100]; };



extern __inline__ int ext2fs_set_bit(unsigned int nr, void * addr)
{
 int oldbit;

 addr = (void *) (((unsigned char *) addr) + (nr >> 3));
 __asm__ __volatile__("btsl %2,%1\n\tsbbl %0,%0"
  :"=r" (oldbit),"+m" ((*(struct __dummy_h *) addr))
  :"r" (nr & 7));
 return oldbit;
}

extern __inline__ int ext2fs_clear_bit(unsigned int nr, void * addr)
{
 int oldbit;

 addr = (void *) (((unsigned char *) addr) + (nr >> 3));
 __asm__ __volatile__("btrl %2,%1\n\tsbbl %0,%0"
  :"=r" (oldbit),"+m" ((*(struct __dummy_h *) addr))
  :"r" (nr & 7));
 return oldbit;
}

extern __inline__ int ext2fs_test_bit(unsigned int nr, const void * addr)
{
 int oldbit;

 addr = (const void *) (((const unsigned char *) addr) + (nr >> 3));
 __asm__ __volatile__("btl %2,%1\n\tsbbl %0,%0"
  :"=r" (oldbit)
  :"m" ((*(const struct __dummy_h *) addr)),"r" (nr & 7));
 return oldbit;
}

extern __inline__ __u32 ext2fs_swab32(__u32 val)
{



 __asm__("xchgb %b0,%h0\n\t"
  "rorl $16,%0\n\t"
  "xchgb %b0,%h0"
  :"=q" (val)
  : "0" (val));

 return val;
}

extern __inline__ __u16 ext2fs_swab16(__u16 val)
{
 __asm__("xchgb %b0,%h0"
  : "=q" (val)
  : "0" (val));
  return val;
}
# 385 "../../lib/ext2fs/bitops.h"
extern __inline__ __u64 ext2fs_swab64(__u64 val)
{
 return (ext2fs_swab32((__u32) (val >> 32)) |
  (((__u64)ext2fs_swab32(val & 0xFFFFFFFFUL)) << 32));
}

extern __inline__ int ext2fs_mark_block_bitmap(ext2fs_block_bitmap bitmap,
           blk_t block)
{
 return ext2fs_mark_generic_bitmap((ext2fs_generic_bitmap) bitmap,
       block);
}

extern __inline__ int ext2fs_unmark_block_bitmap(ext2fs_block_bitmap bitmap,
      blk_t block)
{
 return ext2fs_unmark_generic_bitmap((ext2fs_generic_bitmap) bitmap,
         block);
}

extern __inline__ int ext2fs_test_block_bitmap(ext2fs_block_bitmap bitmap,
           blk_t block)
{
 return ext2fs_test_generic_bitmap((ext2fs_generic_bitmap) bitmap,
       block);
}

extern __inline__ int ext2fs_mark_inode_bitmap(ext2fs_inode_bitmap bitmap,
           ext2_ino_t inode)
{
 return ext2fs_mark_generic_bitmap((ext2fs_generic_bitmap) bitmap,
       inode);
}

extern __inline__ int ext2fs_unmark_inode_bitmap(ext2fs_inode_bitmap bitmap,
      ext2_ino_t inode)
{
 return ext2fs_unmark_generic_bitmap((ext2fs_generic_bitmap) bitmap,
         inode);
}

extern __inline__ int ext2fs_test_inode_bitmap(ext2fs_inode_bitmap bitmap,
           ext2_ino_t inode)
{
 return ext2fs_test_generic_bitmap((ext2fs_generic_bitmap) bitmap,
       inode);
}

extern __inline__ void ext2fs_fast_mark_block_bitmap(ext2fs_block_bitmap bitmap,
         blk_t block)
{
 ext2fs_mark_generic_bitmap((ext2fs_generic_bitmap) bitmap, block);
}

extern __inline__ void ext2fs_fast_unmark_block_bitmap(ext2fs_block_bitmap bitmap,
           blk_t block)
{
 ext2fs_unmark_generic_bitmap((ext2fs_generic_bitmap) bitmap, block);
}

extern __inline__ int ext2fs_fast_test_block_bitmap(ext2fs_block_bitmap bitmap,
         blk_t block)
{
 return ext2fs_test_generic_bitmap((ext2fs_generic_bitmap) bitmap,
       block);
}

extern __inline__ void ext2fs_fast_mark_inode_bitmap(ext2fs_inode_bitmap bitmap,
         ext2_ino_t inode)
{
 ext2fs_mark_generic_bitmap((ext2fs_generic_bitmap) bitmap, inode);
}

extern __inline__ void ext2fs_fast_unmark_inode_bitmap(ext2fs_inode_bitmap bitmap,
           ext2_ino_t inode)
{
 ext2fs_unmark_generic_bitmap((ext2fs_generic_bitmap) bitmap, inode);
}

extern __inline__ int ext2fs_fast_test_inode_bitmap(ext2fs_inode_bitmap bitmap,
        ext2_ino_t inode)
{
 return ext2fs_test_generic_bitmap((ext2fs_generic_bitmap) bitmap,
       inode);
}

extern __inline__ blk_t ext2fs_get_block_bitmap_start(ext2fs_block_bitmap bitmap)
{
 return ext2fs_get_generic_bitmap_start((ext2fs_generic_bitmap) bitmap);
}

extern __inline__ ext2_ino_t ext2fs_get_inode_bitmap_start(ext2fs_inode_bitmap bitmap)
{
 return ext2fs_get_generic_bitmap_start((ext2fs_generic_bitmap) bitmap);
}

extern __inline__ blk_t ext2fs_get_block_bitmap_end(ext2fs_block_bitmap bitmap)
{
 return ext2fs_get_generic_bitmap_end((ext2fs_generic_bitmap) bitmap);
}

extern __inline__ ext2_ino_t ext2fs_get_inode_bitmap_end(ext2fs_inode_bitmap bitmap)
{
 return ext2fs_get_generic_bitmap_end((ext2fs_generic_bitmap) bitmap);
}

extern __inline__ int ext2fs_fast_test_block_bitmap_range(ext2fs_block_bitmap bitmap,
       blk_t block, int num)
{
 return ext2fs_test_block_bitmap_range(bitmap, block, num);
}

extern __inline__ void ext2fs_fast_mark_block_bitmap_range(ext2fs_block_bitmap bitmap,
        blk_t block, int num)
{
 ext2fs_mark_block_bitmap_range(bitmap, block, num);
}

extern __inline__ void ext2fs_fast_unmark_block_bitmap_range(ext2fs_block_bitmap bitmap,
          blk_t block, int num)
{
 ext2fs_unmark_block_bitmap_range(bitmap, block, num);
}



extern __inline__ int ext2fs_mark_block_bitmap2(ext2fs_block_bitmap bitmap,
           blk64_t block)
{
 return ext2fs_mark_generic_bmap((ext2fs_generic_bitmap) bitmap,
     block);
}

extern __inline__ int ext2fs_unmark_block_bitmap2(ext2fs_block_bitmap bitmap,
      blk64_t block)
{
 return ext2fs_unmark_generic_bmap((ext2fs_generic_bitmap) bitmap, block);
}

extern __inline__ int ext2fs_test_block_bitmap2(ext2fs_block_bitmap bitmap,
           blk64_t block)
{
 return ext2fs_test_generic_bmap((ext2fs_generic_bitmap) bitmap,
     block);
}

extern __inline__ int ext2fs_mark_inode_bitmap2(ext2fs_inode_bitmap bitmap,
           ext2_ino_t inode)
{
 return ext2fs_mark_generic_bmap((ext2fs_generic_bitmap) bitmap,
     inode);
}

extern __inline__ int ext2fs_unmark_inode_bitmap2(ext2fs_inode_bitmap bitmap,
      ext2_ino_t inode)
{
 return ext2fs_unmark_generic_bmap((ext2fs_generic_bitmap) bitmap,
       inode);
}

extern __inline__ int ext2fs_test_inode_bitmap2(ext2fs_inode_bitmap bitmap,
           ext2_ino_t inode)
{
 return ext2fs_test_generic_bmap((ext2fs_generic_bitmap) bitmap,
     inode);
}

extern __inline__ void ext2fs_fast_mark_block_bitmap2(ext2fs_block_bitmap bitmap,
          blk64_t block)
{
 ext2fs_mark_generic_bmap((ext2fs_generic_bitmap) bitmap, block);
}

extern __inline__ void ext2fs_fast_unmark_block_bitmap2(ext2fs_block_bitmap bitmap,
            blk64_t block)
{
 ext2fs_unmark_generic_bmap((ext2fs_generic_bitmap) bitmap, block);
}

extern __inline__ int ext2fs_fast_test_block_bitmap2(ext2fs_block_bitmap bitmap,
         blk64_t block)
{
 return ext2fs_test_generic_bmap((ext2fs_generic_bitmap) bitmap,
     block);
}

extern __inline__ void ext2fs_fast_mark_inode_bitmap2(ext2fs_inode_bitmap bitmap,
          ext2_ino_t inode)
{
 ext2fs_mark_generic_bmap((ext2fs_generic_bitmap) bitmap, inode);
}

extern __inline__ void ext2fs_fast_unmark_inode_bitmap2(ext2fs_inode_bitmap bitmap,
            ext2_ino_t inode)
{
 ext2fs_unmark_generic_bmap((ext2fs_generic_bitmap) bitmap, inode);
}

extern __inline__ int ext2fs_fast_test_inode_bitmap2(ext2fs_inode_bitmap bitmap,
         ext2_ino_t inode)
{
 return ext2fs_test_generic_bmap((ext2fs_generic_bitmap) bitmap,
     inode);
}

extern __inline__ errcode_t ext2fs_find_first_zero_block_bitmap2(ext2fs_block_bitmap bitmap,
       blk64_t start,
       blk64_t end,
       blk64_t *out)
{
 __u64 o;
 errcode_t rv;

 rv = ext2fs_find_first_zero_generic_bmap((ext2fs_generic_bitmap) bitmap,
       start, end, &o);
 if (!rv)
  *out = o;
 return rv;
}

extern __inline__ errcode_t ext2fs_find_first_zero_inode_bitmap2(ext2fs_inode_bitmap bitmap,
       ext2_ino_t start,
       ext2_ino_t end,
       ext2_ino_t *out)
{
 __u64 o;
 errcode_t rv;

 rv = ext2fs_find_first_zero_generic_bmap((ext2fs_generic_bitmap) bitmap,
       start, end, &o);
 if (!rv)
  *out = (ext2_ino_t) o;
 return rv;
}

extern __inline__ errcode_t ext2fs_find_first_set_block_bitmap2(ext2fs_block_bitmap bitmap,
             blk64_t start,
             blk64_t end,
             blk64_t *out)
{
 __u64 o;
 errcode_t rv;

 rv = ext2fs_find_first_set_generic_bmap((ext2fs_generic_bitmap) bitmap,
      start, end, &o);
 if (!rv)
  *out = o;
 return rv;
}

extern __inline__ errcode_t ext2fs_find_first_set_inode_bitmap2(ext2fs_inode_bitmap bitmap,
             ext2_ino_t start,
             ext2_ino_t end,
             ext2_ino_t *out)
{
 __u64 o;
 errcode_t rv;

 rv = ext2fs_find_first_set_generic_bmap((ext2fs_generic_bitmap) bitmap,
      start, end, &o);
 if (!rv)
  *out = (ext2_ino_t) o;
 return rv;
}

extern __inline__ blk64_t ext2fs_get_block_bitmap_start2(ext2fs_block_bitmap bitmap)
{
 return ext2fs_get_generic_bmap_start((ext2fs_generic_bitmap) bitmap);
}

extern __inline__ ext2_ino_t ext2fs_get_inode_bitmap_start2(ext2fs_inode_bitmap bitmap)
{
 return (ext2_ino_t) ext2fs_get_generic_bmap_start((ext2fs_generic_bitmap) bitmap);
}

extern __inline__ blk64_t ext2fs_get_block_bitmap_end2(ext2fs_block_bitmap bitmap)
{
 return ext2fs_get_generic_bmap_end((ext2fs_generic_bitmap) bitmap);
}

extern __inline__ ext2_ino_t ext2fs_get_inode_bitmap_end2(ext2fs_inode_bitmap bitmap)
{
 return (ext2_ino_t) ext2fs_get_generic_bmap_end((ext2fs_generic_bitmap) bitmap);
}

extern __inline__ int ext2fs_fast_test_block_bitmap_range2(ext2fs_block_bitmap bitmap,
        blk64_t block,
        unsigned int num)
{
 return ext2fs_test_block_bitmap_range2(bitmap, block, num);
}

extern __inline__ void ext2fs_fast_mark_block_bitmap_range2(ext2fs_block_bitmap bitmap,
         blk64_t block,
         unsigned int num)
{
 ext2fs_mark_block_bitmap_range2(bitmap, block, num);
}

extern __inline__ void ext2fs_fast_unmark_block_bitmap_range2(ext2fs_block_bitmap bitmap,
           blk64_t block,
           unsigned int num)
{
 ext2fs_unmark_block_bitmap_range2(bitmap, block, num);
}
# 700 "../../lib/ext2fs/bitops.h"
extern int ext2fs_set_bit64(__u64 nr,void * addr);
extern int ext2fs_clear_bit64(__u64 nr, void * addr);
extern int ext2fs_test_bit64(__u64 nr, const void * addr);
extern unsigned int ext2fs_bitcount(const void *addr, unsigned int nbytes);
# 294 "ext2fs.h" 2
# 367 "ext2fs.h"
struct ext2fs_extent {
 blk64_t e_pblk;
 blk64_t e_lblk;
 __u32 e_len;
 __u32 e_flags;
};

typedef struct ext2_extent_handle *ext2_extent_handle_t;
typedef struct ext2_extent_path *ext2_extent_path_t;
# 415 "ext2fs.h"
struct ext2_extent_info {
 int curr_entry;
 int curr_level;
 int num_entries;
 int max_entries;
 int max_depth;
 int bytes_avail;
 blk64_t max_lblk;
 blk64_t max_pblk;
 __u32 max_len;
 __u32 max_uninit_len;
};
# 458 "ext2fs.h"
typedef struct ext2_struct_inode_scan *ext2_inode_scan;
# 529 "ext2fs.h"
typedef struct ext2_icount *ext2_icount_t;
# 554 "ext2fs.h"
# 1 "magic.h" 1
# 555 "ext2fs.h" 2
# 621 "ext2fs.h"
typedef struct stat ext2fs_struct_stat;
# 633 "ext2fs.h"
struct ext2_xattr_handle;






static inline int ext2fs_has_group_desc_csum(ext2_filsys fs)
{
 return ( (fs->super)->s_feature_ro_compat & (0x0010 | 0x0400) )

                                        ;
}


static inline int ext2fs_needs_large_file_feature(unsigned long long file_size)
{
 return file_size >= 0x80000000ULL;
}


extern errcode_t ext2fs_new_inode(ext2_filsys fs, ext2_ino_t dir, int mode,
      ext2fs_inode_bitmap map, ext2_ino_t *ret);
extern errcode_t ext2fs_new_block(ext2_filsys fs, blk_t goal,
      ext2fs_block_bitmap map, blk_t *ret);
extern errcode_t ext2fs_new_block2(ext2_filsys fs, blk64_t goal,
       ext2fs_block_bitmap map, blk64_t *ret);
extern errcode_t ext2fs_get_free_blocks(ext2_filsys fs, blk_t start,
     blk_t finish, int num,
     ext2fs_block_bitmap map,
     blk_t *ret);
extern errcode_t ext2fs_get_free_blocks2(ext2_filsys fs, blk64_t start,
      blk64_t finish, int num,
      ext2fs_block_bitmap map,
      blk64_t *ret);
extern errcode_t ext2fs_alloc_block(ext2_filsys fs, blk_t goal,
        char *block_buf, blk_t *ret);
extern errcode_t ext2fs_alloc_block2(ext2_filsys fs, blk64_t goal,
         char *block_buf, blk64_t *ret);
extern void ext2fs_set_alloc_block_callback(ext2_filsys fs,
         errcode_t (*func)(ext2_filsys fs,
             blk64_t goal,
             blk64_t *ret),
         errcode_t (**old)(ext2_filsys fs,
             blk64_t goal,
             blk64_t *ret));
blk64_t ext2fs_find_inode_goal(ext2_filsys fs, ext2_ino_t ino,
          struct ext2_inode *inode, blk64_t lblk);
extern void ext2fs_set_new_range_callback(ext2_filsys fs,
 errcode_t (*func)(ext2_filsys fs, int flags, blk64_t goal,
          blk64_t len, blk64_t *pblk, blk64_t *plen),
 errcode_t (**old)(ext2_filsys fs, int flags, blk64_t goal,
          blk64_t len, blk64_t *pblk, blk64_t *plen));
extern void ext2fs_set_block_alloc_stats_range_callback(ext2_filsys fs,
 void (*func)(ext2_filsys fs, blk64_t blk,
        blk_t num, int inuse),
 void (**old)(ext2_filsys fs, blk64_t blk,
        blk_t num, int inuse));



errcode_t ext2fs_new_range(ext2_filsys fs, int flags, blk64_t goal,
      blk64_t len, ext2fs_block_bitmap map, blk64_t *pblk,
      blk64_t *plen);



errcode_t ext2fs_alloc_range(ext2_filsys fs, int flags, blk64_t goal,
        blk_t len, blk64_t *ret);


extern int ext2fs_reserve_super_and_bgd(ext2_filsys fs,
     dgrp_t group,
     ext2fs_block_bitmap bmap);
extern void ext2fs_set_block_alloc_stats_callback(ext2_filsys fs,
        void (*func)(ext2_filsys fs,
              blk64_t blk,
              int inuse),
        void (**old)(ext2_filsys fs,
              blk64_t blk,
              int inuse));


void ext2fs_inode_alloc_stats(ext2_filsys fs, ext2_ino_t ino, int inuse);
void ext2fs_inode_alloc_stats2(ext2_filsys fs, ext2_ino_t ino,
          int inuse, int isdir);
void ext2fs_block_alloc_stats(ext2_filsys fs, blk_t blk, int inuse);
void ext2fs_block_alloc_stats2(ext2_filsys fs, blk64_t blk, int inuse);
void ext2fs_block_alloc_stats_range(ext2_filsys fs, blk64_t blk,
        blk_t num, int inuse);


extern errcode_t ext2fs_allocate_tables(ext2_filsys fs);
extern errcode_t ext2fs_allocate_group_table(ext2_filsys fs, dgrp_t group,
          ext2fs_block_bitmap bmap);


extern errcode_t ext2fs_u32_list_create(ext2_u32_list *ret, int size);
extern errcode_t ext2fs_u32_list_add(ext2_u32_list bb, __u32 blk);
extern int ext2fs_u32_list_find(ext2_u32_list bb, __u32 blk);
extern int ext2fs_u32_list_test(ext2_u32_list bb, blk_t blk);
extern errcode_t ext2fs_u32_list_iterate_begin(ext2_u32_list bb,
            ext2_u32_iterate *ret);
extern int ext2fs_u32_list_iterate(ext2_u32_iterate iter, blk_t *blk);
extern void ext2fs_u32_list_iterate_end(ext2_u32_iterate iter);
extern errcode_t ext2fs_u32_copy(ext2_u32_list src, ext2_u32_list *dest);
extern int ext2fs_u32_list_equal(ext2_u32_list bb1, ext2_u32_list bb2);

extern errcode_t ext2fs_badblocks_list_create(ext2_badblocks_list *ret,
         int size);
extern errcode_t ext2fs_badblocks_list_add(ext2_badblocks_list bb,
        blk_t blk);
extern int ext2fs_badblocks_list_test(ext2_badblocks_list bb,
        blk_t blk);
extern int ext2fs_u32_list_del(ext2_u32_list bb, __u32 blk);
extern void ext2fs_badblocks_list_del(ext2_u32_list bb, __u32 blk);
extern errcode_t
 ext2fs_badblocks_list_iterate_begin(ext2_badblocks_list bb,
         ext2_badblocks_iterate *ret);
extern int ext2fs_badblocks_list_iterate(ext2_badblocks_iterate iter,
      blk_t *blk);
extern void ext2fs_badblocks_list_iterate_end(ext2_badblocks_iterate iter);
extern errcode_t ext2fs_badblocks_copy(ext2_badblocks_list src,
           ext2_badblocks_list *dest);
extern int ext2fs_badblocks_equal(ext2_badblocks_list bb1,
      ext2_badblocks_list bb2);
extern int ext2fs_u32_list_count(ext2_u32_list bb);


extern errcode_t badblocks_list_create(badblocks_list *ret, int size);
extern errcode_t badblocks_list_add(badblocks_list bb, blk_t blk);
extern int badblocks_list_test(badblocks_list bb, blk_t blk);
extern errcode_t badblocks_list_iterate_begin(badblocks_list bb,
           badblocks_iterate *ret);
extern int badblocks_list_iterate(badblocks_iterate iter, blk_t *blk);
extern void badblocks_list_iterate_end(badblocks_iterate iter);
extern void badblocks_list_free(badblocks_list bb);


extern errcode_t ext2fs_update_bb_inode(ext2_filsys fs,
     ext2_badblocks_list bb_list);


extern void ext2fs_free_block_bitmap(ext2fs_block_bitmap bitmap);
extern void ext2fs_free_inode_bitmap(ext2fs_inode_bitmap bitmap);
extern errcode_t ext2fs_copy_bitmap(ext2fs_generic_bitmap src,
        ext2fs_generic_bitmap *dest);
extern errcode_t ext2fs_write_inode_bitmap(ext2_filsys fs);
extern errcode_t ext2fs_write_block_bitmap (ext2_filsys fs);
extern errcode_t ext2fs_read_inode_bitmap (ext2_filsys fs);
extern errcode_t ext2fs_read_block_bitmap(ext2_filsys fs);
extern errcode_t ext2fs_allocate_block_bitmap(ext2_filsys fs,
           const char *descr,
           ext2fs_block_bitmap *ret);
extern errcode_t ext2fs_allocate_subcluster_bitmap(ext2_filsys fs,
         const char *descr,
         ext2fs_block_bitmap *ret);
extern int ext2fs_get_bitmap_granularity(ext2fs_block_bitmap bitmap);
extern errcode_t ext2fs_allocate_inode_bitmap(ext2_filsys fs,
           const char *descr,
           ext2fs_inode_bitmap *ret);
extern errcode_t ext2fs_fudge_inode_bitmap_end(ext2fs_inode_bitmap bitmap,
            ext2_ino_t end, ext2_ino_t *oend);
extern errcode_t ext2fs_fudge_block_bitmap_end(ext2fs_block_bitmap bitmap,
            blk_t end, blk_t *oend);
extern errcode_t ext2fs_fudge_block_bitmap_end2(ext2fs_block_bitmap bitmap,
      blk64_t end, blk64_t *oend);
extern void ext2fs_clear_inode_bitmap(ext2fs_inode_bitmap bitmap);
extern void ext2fs_clear_block_bitmap(ext2fs_block_bitmap bitmap);
extern errcode_t ext2fs_read_bitmaps(ext2_filsys fs);
extern errcode_t ext2fs_write_bitmaps(ext2_filsys fs);
extern errcode_t ext2fs_resize_inode_bitmap(__u32 new_end, __u32 new_real_end,
         ext2fs_inode_bitmap bmap);
extern errcode_t ext2fs_resize_inode_bitmap2(__u64 new_end,
          __u64 new_real_end,
          ext2fs_inode_bitmap bmap);
extern errcode_t ext2fs_resize_block_bitmap(__u32 new_end, __u32 new_real_end,
         ext2fs_block_bitmap bmap);
extern errcode_t ext2fs_resize_block_bitmap2(__u64 new_end,
          __u64 new_real_end,
          ext2fs_block_bitmap bmap);
extern errcode_t ext2fs_compare_block_bitmap(ext2fs_block_bitmap bm1,
          ext2fs_block_bitmap bm2);
extern errcode_t ext2fs_compare_inode_bitmap(ext2fs_inode_bitmap bm1,
          ext2fs_inode_bitmap bm2);
extern errcode_t ext2fs_set_inode_bitmap_range(ext2fs_inode_bitmap bmap,
     ext2_ino_t start, unsigned int num,
     void *in);
extern errcode_t ext2fs_set_inode_bitmap_range2(ext2fs_inode_bitmap bmap,
      __u64 start, size_t num,
      void *in);
extern errcode_t ext2fs_get_inode_bitmap_range(ext2fs_inode_bitmap bmap,
     ext2_ino_t start, unsigned int num,
     void *out);
extern errcode_t ext2fs_get_inode_bitmap_range2(ext2fs_inode_bitmap bmap,
      __u64 start, size_t num,
      void *out);
extern errcode_t ext2fs_set_block_bitmap_range(ext2fs_block_bitmap bmap,
     blk_t start, unsigned int num,
     void *in);
extern errcode_t ext2fs_set_block_bitmap_range2(ext2fs_block_bitmap bmap,
      blk64_t start, size_t num,
      void *in);
extern errcode_t ext2fs_get_block_bitmap_range(ext2fs_block_bitmap bmap,
     blk_t start, unsigned int num,
     void *out);
extern errcode_t ext2fs_get_block_bitmap_range2(ext2fs_block_bitmap bmap,
      blk64_t start, size_t num,
      void *out);


extern __u32 ext2fs_inode_bitmap_checksum(ext2_filsys fs, dgrp_t group);
extern __u32 ext2fs_block_bitmap_checksum(ext2_filsys fs, dgrp_t group);
extern dgrp_t ext2fs_group_of_blk2(ext2_filsys fs, blk64_t);
extern blk64_t ext2fs_group_first_block2(ext2_filsys fs, dgrp_t group);
extern blk64_t ext2fs_group_last_block2(ext2_filsys fs, dgrp_t group);
extern int ext2fs_group_blocks_count(ext2_filsys fs, dgrp_t group);
extern blk64_t ext2fs_inode_data_blocks2(ext2_filsys fs,
      struct ext2_inode *inode);
extern blk64_t ext2fs_inode_i_blocks(ext2_filsys fs,
      struct ext2_inode *inode);
extern blk64_t ext2fs_blocks_count(struct ext2_super_block *super);
extern void ext2fs_blocks_count_set(struct ext2_super_block *super,
        blk64_t blk);
extern void ext2fs_blocks_count_add(struct ext2_super_block *super,
        blk64_t blk);
extern blk64_t ext2fs_r_blocks_count(struct ext2_super_block *super);
extern void ext2fs_r_blocks_count_set(struct ext2_super_block *super,
          blk64_t blk);
extern void ext2fs_r_blocks_count_add(struct ext2_super_block *super,
          blk64_t blk);
extern blk64_t ext2fs_free_blocks_count(struct ext2_super_block *super);
extern void ext2fs_free_blocks_count_set(struct ext2_super_block *super,
      blk64_t blk);
extern void ext2fs_free_blocks_count_add(struct ext2_super_block *super,
      blk64_t blk);

extern struct ext2_group_desc *ext2fs_group_desc(ext2_filsys fs,
       struct opaque_ext2_group_desc *gdp,
       dgrp_t group);
extern blk64_t ext2fs_block_bitmap_csum(ext2_filsys fs, dgrp_t group);
extern blk64_t ext2fs_block_bitmap_loc(ext2_filsys fs, dgrp_t group);
extern void ext2fs_block_bitmap_loc_set(ext2_filsys fs, dgrp_t group,
     blk64_t blk);
extern __u32 ext2fs_inode_bitmap_csum(ext2_filsys fs, dgrp_t group);
extern blk64_t ext2fs_inode_bitmap_loc(ext2_filsys fs, dgrp_t group);
extern void ext2fs_inode_bitmap_loc_set(ext2_filsys fs, dgrp_t group,
     blk64_t blk);
extern blk64_t ext2fs_inode_table_loc(ext2_filsys fs, dgrp_t group);
extern void ext2fs_inode_table_loc_set(ext2_filsys fs, dgrp_t group,
           blk64_t blk);
extern __u32 ext2fs_bg_free_blocks_count(ext2_filsys fs, dgrp_t group);
extern void ext2fs_bg_free_blocks_count_set(ext2_filsys fs, dgrp_t group,
      __u32 n);
extern __u32 ext2fs_bg_free_inodes_count(ext2_filsys fs, dgrp_t group);
extern void ext2fs_bg_free_inodes_count_set(ext2_filsys fs, dgrp_t group,
      __u32 n);
extern __u32 ext2fs_bg_used_dirs_count(ext2_filsys fs, dgrp_t group);
extern void ext2fs_bg_used_dirs_count_set(ext2_filsys fs, dgrp_t group,
           __u32 n);
extern __u32 ext2fs_bg_itable_unused(ext2_filsys fs, dgrp_t group);
extern void ext2fs_bg_itable_unused_set(ext2_filsys fs, dgrp_t group,
         __u32 n);
extern __u16 ext2fs_bg_flags(ext2_filsys fs, dgrp_t group);
extern void ext2fs_bg_flags_zap(ext2_filsys fs, dgrp_t group);
extern int ext2fs_bg_flags_test(ext2_filsys fs, dgrp_t group, __u16 bg_flag);
extern void ext2fs_bg_flags_set(ext2_filsys fs, dgrp_t group, __u16 bg_flags);
extern void ext2fs_bg_flags_clear(ext2_filsys fs, dgrp_t group, __u16 bg_flags);
extern __u16 ext2fs_bg_checksum(ext2_filsys fs, dgrp_t group);
extern void ext2fs_bg_checksum_set(ext2_filsys fs, dgrp_t group, __u16 checksum);
extern blk64_t ext2fs_file_acl_block(ext2_filsys fs,
         const struct ext2_inode *inode);
extern void ext2fs_file_acl_block_set(ext2_filsys fs,
          struct ext2_inode *inode, blk64_t blk);
extern errcode_t ext2fs_inode_size_set(ext2_filsys fs, struct ext2_inode *inode,
           ext2_off64_t size);


extern errcode_t ext2fs_block_iterate(ext2_filsys fs,
          ext2_ino_t ino,
          int flags,
          char *block_buf,
          int (*func)(ext2_filsys fs,
        blk_t *blocknr,
        int blockcnt,
        void *priv_data),
          void *priv_data);
errcode_t ext2fs_block_iterate2(ext2_filsys fs,
    ext2_ino_t ino,
    int flags,
    char *block_buf,
    int (*func)(ext2_filsys fs,
         blk_t *blocknr,
         e2_blkcnt_t blockcnt,
         blk_t ref_blk,
         int ref_offset,
         void *priv_data),
    void *priv_data);
errcode_t ext2fs_block_iterate3(ext2_filsys fs,
    ext2_ino_t ino,
    int flags,
    char *block_buf,
    int (*func)(ext2_filsys fs,
         blk64_t *blocknr,
         e2_blkcnt_t blockcnt,
         blk64_t ref_blk,
         int ref_offset,
         void *priv_data),
    void *priv_data);


extern errcode_t ext2fs_bmap(ext2_filsys fs, ext2_ino_t ino,
        struct ext2_inode *inode,
        char *block_buf, int bmap_flags,
        blk_t block, blk_t *phys_blk);
extern errcode_t ext2fs_bmap2(ext2_filsys fs, ext2_ino_t ino,
         struct ext2_inode *inode,
         char *block_buf, int bmap_flags, blk64_t block,
         int *ret_flags, blk64_t *phys_blk);
errcode_t ext2fs_map_cluster_block(ext2_filsys fs, ext2_ino_t ino,
       struct ext2_inode *inode, blk64_t lblk,
       blk64_t *pblk);
# 965 "ext2fs.h"
extern errcode_t ext2fs_check_desc(ext2_filsys fs);


extern errcode_t ext2fs_close(ext2_filsys fs);
extern errcode_t ext2fs_close2(ext2_filsys fs, int flags);
extern errcode_t ext2fs_close_free(ext2_filsys *fs);
extern errcode_t ext2fs_flush(ext2_filsys fs);
extern errcode_t ext2fs_flush2(ext2_filsys fs, int flags);
extern int ext2fs_bg_has_super(ext2_filsys fs, dgrp_t group_block);
extern errcode_t ext2fs_super_and_bgd_loc2(ext2_filsys fs,
        dgrp_t group,
        blk64_t *ret_super_blk,
        blk64_t *ret_old_desc_blk,
        blk64_t *ret_new_desc_blk,
        blk_t *ret_used_blks);
extern int ext2fs_super_and_bgd_loc(ext2_filsys fs,
        dgrp_t group,
        blk_t *ret_super_blk,
        blk_t *ret_old_desc_blk,
        blk_t *ret_new_desc_blk,
        int *ret_meta_bg);
extern void ext2fs_update_dynamic_rev(ext2_filsys fs);


extern __u32 ext2fs_crc32_be(__u32 crc, unsigned char const *p, size_t len);
extern __u32 ext2fs_crc32c_le(__u32 crc, unsigned char const *p, size_t len);


extern errcode_t ext2fs_mmp_csum_set(ext2_filsys fs, struct mmp_struct *mmp);
extern int ext2fs_mmp_csum_verify(ext2_filsys, struct mmp_struct *mmp);
extern int ext2fs_verify_csum_type(ext2_filsys fs, struct ext2_super_block *sb);
extern errcode_t ext2fs_superblock_csum_set(ext2_filsys fs,
         struct ext2_super_block *sb);
extern int ext2fs_superblock_csum_verify(ext2_filsys fs,
      struct ext2_super_block *sb);
extern errcode_t ext2fs_ext_attr_block_csum_set(ext2_filsys fs,
     ext2_ino_t inum, blk64_t block,
     struct ext2_ext_attr_header *hdr);
extern int ext2fs_ext_attr_block_csum_verify(ext2_filsys fs, ext2_ino_t inum,
          blk64_t block,
          struct ext2_ext_attr_header *hdr);




extern void ext2fs_initialize_dirent_tail(ext2_filsys fs,
       struct ext2_dir_entry_tail *t);
extern int ext2fs_dirent_has_tail(ext2_filsys fs,
      struct ext2_dir_entry *dirent);
extern int ext2fs_dirent_csum_verify(ext2_filsys fs, ext2_ino_t inum,
         struct ext2_dir_entry *dirent);
extern int ext2fs_dir_block_csum_verify(ext2_filsys fs, ext2_ino_t inum,
     struct ext2_dir_entry *dirent);
extern errcode_t ext2fs_dir_block_csum_set(ext2_filsys fs, ext2_ino_t inum,
        struct ext2_dir_entry *dirent);
extern errcode_t ext2fs_get_dx_countlimit(ext2_filsys fs,
       struct ext2_dir_entry *dirent,
       struct ext2_dx_countlimit **cc,
       int *offset);
extern errcode_t ext2fs_extent_block_csum_set(ext2_filsys fs,
           ext2_ino_t inum,
           struct ext3_extent_header *eh);
extern int ext2fs_extent_block_csum_verify(ext2_filsys fs,
        ext2_ino_t inum,
        struct ext3_extent_header *eh);
extern errcode_t ext2fs_block_bitmap_csum_set(ext2_filsys fs, dgrp_t group,
           char *bitmap, int size);
extern int ext2fs_block_bitmap_csum_verify(ext2_filsys fs, dgrp_t group,
        char *bitmap, int size);
extern errcode_t ext2fs_inode_bitmap_csum_set(ext2_filsys fs, dgrp_t group,
           char *bitmap, int size);
extern int ext2fs_inode_bitmap_csum_verify(ext2_filsys fs, dgrp_t group,
        char *bitmap, int size);
extern errcode_t ext2fs_inode_csum_set(ext2_filsys fs, ext2_ino_t inum,
           struct ext2_inode_large *inode);
extern int ext2fs_inode_csum_verify(ext2_filsys fs, ext2_ino_t inum,
        struct ext2_inode_large *inode);
extern void ext2fs_group_desc_csum_set(ext2_filsys fs, dgrp_t group);
extern int ext2fs_group_desc_csum_verify(ext2_filsys fs, dgrp_t group);
extern errcode_t ext2fs_set_gdt_csum(ext2_filsys fs);
extern __u16 ext2fs_group_desc_csum(ext2_filsys fs, dgrp_t group);


extern errcode_t ext2fs_init_dblist(ext2_filsys fs, ext2_dblist *ret_dblist);
extern errcode_t ext2fs_add_dir_block(ext2_dblist dblist, ext2_ino_t ino,
          blk_t blk, int blockcnt);
extern errcode_t ext2fs_add_dir_block2(ext2_dblist dblist, ext2_ino_t ino,
           blk64_t blk, e2_blkcnt_t blockcnt);
extern void ext2fs_dblist_sort(ext2_dblist dblist,
          int (*sortfunc)(const void *,
          const void *));
extern void ext2fs_dblist_sort2(ext2_dblist dblist,
    int (*sortfunc)(const void *,
           const void *));
extern errcode_t ext2fs_dblist_iterate(ext2_dblist dblist,
 int (*func)(ext2_filsys fs, struct ext2_db_entry *db_info,
      void *priv_data),
 void *priv_data);
extern errcode_t ext2fs_dblist_iterate2(ext2_dblist dblist,
 int (*func)(ext2_filsys fs, struct ext2_db_entry2 *db_info,
      void *priv_data),
 void *priv_data);
extern errcode_t ext2fs_dblist_iterate3(ext2_dblist dblist,
 int (*func)(ext2_filsys fs, struct ext2_db_entry2 *db_info,
      void *priv_data),
 unsigned long long start,
 unsigned long long count,
 void *priv_data);
extern errcode_t ext2fs_set_dir_block(ext2_dblist dblist, ext2_ino_t ino,
          blk_t blk, int blockcnt);
extern errcode_t ext2fs_set_dir_block2(ext2_dblist dblist, ext2_ino_t ino,
           blk64_t blk, e2_blkcnt_t blockcnt);
extern errcode_t ext2fs_copy_dblist(ext2_dblist src,
        ext2_dblist *dest);
extern int ext2fs_dblist_count(ext2_dblist dblist);
extern blk64_t ext2fs_dblist_count2(ext2_dblist dblist);
extern errcode_t ext2fs_dblist_get_last(ext2_dblist dblist,
     struct ext2_db_entry **entry);
extern errcode_t ext2fs_dblist_get_last2(ext2_dblist dblist,
     struct ext2_db_entry2 **entry);
extern errcode_t ext2fs_dblist_drop_last(ext2_dblist dblist);


extern errcode_t
 ext2fs_dblist_dir_iterate(ext2_dblist dblist,
      int flags,
      char *block_buf,
      int (*func)(ext2_ino_t dir,
           int entry,
           struct ext2_dir_entry *dirent,
           int offset,
           int blocksize,
           char *buf,
           void *priv_data),
      void *priv_data);
# 1109 "ext2fs.h"
extern errcode_t ext2fs_read_dir_block(ext2_filsys fs, blk_t block,
           void *buf);
extern errcode_t ext2fs_read_dir_block2(ext2_filsys fs, blk_t block,
     void *buf, int flags);
extern errcode_t ext2fs_read_dir_block3(ext2_filsys fs, blk64_t block,
     void *buf, int flags);
extern errcode_t ext2fs_read_dir_block4(ext2_filsys fs, blk64_t block,
     void *buf, int flags, ext2_ino_t ino);
extern errcode_t ext2fs_write_dir_block(ext2_filsys fs, blk_t block,
     void *buf);
extern errcode_t ext2fs_write_dir_block2(ext2_filsys fs, blk_t block,
      void *buf, int flags);
extern errcode_t ext2fs_write_dir_block3(ext2_filsys fs, blk64_t block,
      void *buf, int flags);
extern errcode_t ext2fs_write_dir_block4(ext2_filsys fs, blk64_t block,
      void *buf, int flags, ext2_ino_t ino);


extern errcode_t ext2fs_dirhash(int version, const char *name, int len,
    const __u32 *seed,
    ext2_dirhash_t *ret_hash,
    ext2_dirhash_t *ret_minor_hash);



extern errcode_t ext2fs_get_rec_len(ext2_filsys fs,
        struct ext2_dir_entry *dirent,
        unsigned int *rec_len);
extern errcode_t ext2fs_set_rec_len(ext2_filsys fs,
        unsigned int len,
        struct ext2_dir_entry *dirent);
extern errcode_t ext2fs_dir_iterate(ext2_filsys fs,
         ext2_ino_t dir,
         int flags,
         char *block_buf,
         int (*func)(struct ext2_dir_entry *dirent,
       int offset,
       int blocksize,
       char *buf,
       void *priv_data),
         void *priv_data);
extern errcode_t ext2fs_dir_iterate2(ext2_filsys fs,
         ext2_ino_t dir,
         int flags,
         char *block_buf,
         int (*func)(ext2_ino_t dir,
       int entry,
       struct ext2_dir_entry *dirent,
       int offset,
       int blocksize,
       char *buf,
       void *priv_data),
         void *priv_data);


extern errcode_t ext2fs_dup_handle(ext2_filsys src, ext2_filsys *dest);


extern errcode_t ext2fs_expand_dir(ext2_filsys fs, ext2_ino_t dir);


extern __u32 ext2fs_ext_attr_hash_entry(struct ext2_ext_attr_entry *entry,
     void *data);
extern errcode_t ext2fs_read_ext_attr(ext2_filsys fs, blk_t block, void *buf);
extern errcode_t ext2fs_read_ext_attr2(ext2_filsys fs, blk64_t block,
           void *buf);
extern errcode_t ext2fs_read_ext_attr3(ext2_filsys fs, blk64_t block,
           void *buf, ext2_ino_t inum);
extern errcode_t ext2fs_write_ext_attr(ext2_filsys fs, blk_t block,
           void *buf);
extern errcode_t ext2fs_write_ext_attr2(ext2_filsys fs, blk64_t block,
           void *buf);
extern errcode_t ext2fs_write_ext_attr3(ext2_filsys fs, blk64_t block,
           void *buf, ext2_ino_t inum);
extern errcode_t ext2fs_adjust_ea_refcount(ext2_filsys fs, blk_t blk,
        char *block_buf,
        int adjust, __u32 *newcount);
extern errcode_t ext2fs_adjust_ea_refcount2(ext2_filsys fs, blk64_t blk,
        char *block_buf,
        int adjust, __u32 *newcount);
extern errcode_t ext2fs_adjust_ea_refcount3(ext2_filsys fs, blk64_t blk,
        char *block_buf,
        int adjust, __u32 *newcount,
        ext2_ino_t inum);
errcode_t ext2fs_xattrs_write(struct ext2_xattr_handle *handle);
errcode_t ext2fs_xattrs_read(struct ext2_xattr_handle *handle);
errcode_t ext2fs_xattrs_iterate(struct ext2_xattr_handle *h,
    int (*func)(char *name, char *value,
         size_t value_len, void *data),
    void *data);
errcode_t ext2fs_xattr_get(struct ext2_xattr_handle *h, const char *key,
      void **value, size_t *value_len);
errcode_t ext2fs_xattr_set(struct ext2_xattr_handle *handle,
      const char *key,
      const void *value,
      size_t value_len);
errcode_t ext2fs_xattr_remove(struct ext2_xattr_handle *handle,
         const char *key);
errcode_t ext2fs_xattrs_open(ext2_filsys fs, ext2_ino_t ino,
        struct ext2_xattr_handle **handle);
errcode_t ext2fs_xattrs_close(struct ext2_xattr_handle **handle);
errcode_t ext2fs_free_ext_attr(ext2_filsys fs, ext2_ino_t ino,
          struct ext2_inode_large *inode);
errcode_t ext2fs_xattrs_count(struct ext2_xattr_handle *handle, size_t *count);
errcode_t ext2fs_xattr_inode_max_size(ext2_filsys fs, ext2_ino_t ino,
          size_t *size);


extern errcode_t ext2fs_extent_header_verify(void *ptr, int size);
extern errcode_t ext2fs_extent_open(ext2_filsys fs, ext2_ino_t ino,
        ext2_extent_handle_t *handle);
extern errcode_t ext2fs_extent_open2(ext2_filsys fs, ext2_ino_t ino,
     struct ext2_inode *inode,
     ext2_extent_handle_t *ret_handle);
extern void ext2fs_extent_free(ext2_extent_handle_t handle);
extern errcode_t ext2fs_extent_get(ext2_extent_handle_t handle,
       int flags, struct ext2fs_extent *extent);
extern errcode_t ext2fs_extent_node_split(ext2_extent_handle_t handle);
extern errcode_t ext2fs_extent_replace(ext2_extent_handle_t handle, int flags,
           struct ext2fs_extent *extent);
extern errcode_t ext2fs_extent_insert(ext2_extent_handle_t handle, int flags,
          struct ext2fs_extent *extent);
extern errcode_t ext2fs_extent_set_bmap(ext2_extent_handle_t handle,
     blk64_t logical, blk64_t physical,
     int flags);
extern errcode_t ext2fs_extent_delete(ext2_extent_handle_t handle, int flags);
extern errcode_t ext2fs_extent_get_info(ext2_extent_handle_t handle,
     struct ext2_extent_info *info);
extern errcode_t ext2fs_extent_goto(ext2_extent_handle_t handle,
        blk64_t blk);
extern errcode_t ext2fs_extent_goto2(ext2_extent_handle_t handle,
         int leaf_level, blk64_t blk);
extern errcode_t ext2fs_extent_fix_parents(ext2_extent_handle_t handle);
size_t ext2fs_max_extent_depth(ext2_extent_handle_t handle);







errcode_t ext2fs_fallocate(ext2_filsys fs, int flags, ext2_ino_t ino,
      struct ext2_inode *inode, blk64_t goal,
      blk64_t start, blk64_t len);


extern errcode_t ext2fs_file_open2(ext2_filsys fs, ext2_ino_t ino,
       struct ext2_inode *inode,
       int flags, ext2_file_t *ret);
extern errcode_t ext2fs_file_open(ext2_filsys fs, ext2_ino_t ino,
      int flags, ext2_file_t *ret);
extern ext2_filsys ext2fs_file_get_fs(ext2_file_t file);
struct ext2_inode *ext2fs_file_get_inode(ext2_file_t file);
extern ext2_ino_t ext2fs_file_get_inode_num(ext2_file_t file);
extern errcode_t ext2fs_file_close(ext2_file_t file);
extern errcode_t ext2fs_file_flush(ext2_file_t file);
extern errcode_t ext2fs_file_read(ext2_file_t file, void *buf,
      unsigned int wanted, unsigned int *got);
extern errcode_t ext2fs_file_write(ext2_file_t file, const void *buf,
       unsigned int nbytes, unsigned int *written);
extern errcode_t ext2fs_file_llseek(ext2_file_t file, __u64 offset,
       int whence, __u64 *ret_pos);
extern errcode_t ext2fs_file_lseek(ext2_file_t file, ext2_off_t offset,
       int whence, ext2_off_t *ret_pos);
errcode_t ext2fs_file_get_lsize(ext2_file_t file, __u64 *ret_size);
extern ext2_off_t ext2fs_file_get_size(ext2_file_t file);
extern errcode_t ext2fs_file_set_size(ext2_file_t file, ext2_off_t size);
extern errcode_t ext2fs_file_set_size2(ext2_file_t file, ext2_off64_t size);


extern char *ext2fs_find_block_device(dev_t device);


extern errcode_t ext2fs_sync_device(int fd, int flushb);


extern void ext2fs_free(ext2_filsys fs);
extern void ext2fs_free_dblist(ext2_dblist dblist);
extern void ext2fs_badblocks_list_free(ext2_badblocks_list bb);
extern void ext2fs_u32_list_free(ext2_u32_list bb);


extern void ext2fs_free_generic_bitmap(ext2fs_inode_bitmap bitmap);
extern errcode_t ext2fs_make_generic_bitmap(errcode_t magic, ext2_filsys fs,
         __u32 start, __u32 end,
         __u32 real_end,
         const char *descr, char *init_map,
         ext2fs_generic_bitmap *ret);
extern errcode_t ext2fs_allocate_generic_bitmap(__u32 start,
      __u32 end,
      __u32 real_end,
      const char *descr,
      ext2fs_generic_bitmap *ret);
extern errcode_t ext2fs_copy_generic_bitmap(ext2fs_generic_bitmap src,
         ext2fs_generic_bitmap *dest);
extern void ext2fs_clear_generic_bitmap(ext2fs_generic_bitmap bitmap);
extern errcode_t ext2fs_fudge_generic_bitmap_end(ext2fs_inode_bitmap bitmap,
       errcode_t magic,
       errcode_t neq,
       ext2_ino_t end,
       ext2_ino_t *oend);
extern void ext2fs_set_generic_bitmap_padding(ext2fs_generic_bitmap map);
extern errcode_t ext2fs_resize_generic_bitmap(errcode_t magic,
           __u32 new_end,
           __u32 new_real_end,
           ext2fs_generic_bitmap bmap);
extern errcode_t ext2fs_compare_generic_bitmap(errcode_t magic, errcode_t neq,
            ext2fs_generic_bitmap bm1,
            ext2fs_generic_bitmap bm2);
extern errcode_t ext2fs_get_generic_bitmap_range(ext2fs_generic_bitmap bmap,
       errcode_t magic,
       __u32 start, __u32 num,
       void *out);
extern errcode_t ext2fs_set_generic_bitmap_range(ext2fs_generic_bitmap bmap,
       errcode_t magic,
       __u32 start, __u32 num,
       void *in);
extern errcode_t ext2fs_find_first_zero_generic_bitmap(ext2fs_generic_bitmap bitmap,
             __u32 start, __u32 end,
             __u32 *out);
extern errcode_t ext2fs_find_first_set_generic_bitmap(ext2fs_generic_bitmap bitmap,
             __u32 start, __u32 end,
             __u32 *out);


void ext2fs_free_generic_bmap(ext2fs_generic_bitmap bmap);
errcode_t ext2fs_alloc_generic_bmap(ext2_filsys fs, errcode_t magic,
        int type, __u64 start, __u64 end,
        __u64 real_end,
        const char *descr,
        ext2fs_generic_bitmap *ret);
errcode_t ext2fs_copy_generic_bmap(ext2fs_generic_bitmap src,
       ext2fs_generic_bitmap *dest);
void ext2fs_clear_generic_bmap(ext2fs_generic_bitmap bitmap);
errcode_t ext2fs_fudge_generic_bmap_end(ext2fs_generic_bitmap bitmap,
     errcode_t neq,
     __u64 end, __u64 *oend);
void ext2fs_set_generic_bmap_padding(ext2fs_generic_bitmap bmap);
errcode_t ext2fs_resize_generic_bmap(ext2fs_generic_bitmap bmap,
         __u64 new_end,
         __u64 new_real_end);
errcode_t ext2fs_compare_generic_bmap(errcode_t neq,
          ext2fs_generic_bitmap bm1,
          ext2fs_generic_bitmap bm2);
errcode_t ext2fs_get_generic_bmap_range(ext2fs_generic_bitmap bmap,
     __u64 start, unsigned int num,
     void *out);
errcode_t ext2fs_set_generic_bmap_range(ext2fs_generic_bitmap bmap,
     __u64 start, unsigned int num,
     void *in);
errcode_t ext2fs_convert_subcluster_bitmap(ext2_filsys fs,
        ext2fs_block_bitmap *bitmap);


extern errcode_t ext2fs_get_num_dirs(ext2_filsys fs, ext2_ino_t *ret_num_dirs);


extern errcode_t ext2fs_get_device_size(const char *file, int blocksize,
     blk_t *retblocks);
extern errcode_t ext2fs_get_device_size2(const char *file, int blocksize,
     blk64_t *retblocks);


extern int ext2fs_get_dio_alignment(int fd);
errcode_t ext2fs_get_device_sectsize(const char *file, int *sectsize);
errcode_t ext2fs_get_device_phys_sectsize(const char *file, int *sectsize);


errcode_t ext2fs_iblk_add_blocks(ext2_filsys fs, struct ext2_inode *inode,
     blk64_t num_blocks);
errcode_t ext2fs_iblk_sub_blocks(ext2_filsys fs, struct ext2_inode *inode,
     blk64_t num_blocks);
errcode_t ext2fs_iblk_set(ext2_filsys fs, struct ext2_inode *inode, blk64_t b);


extern errcode_t ext2fs_image_inode_write(ext2_filsys fs, int fd, int flags);
extern errcode_t ext2fs_image_inode_read(ext2_filsys fs, int fd, int flags);
extern errcode_t ext2fs_image_super_write(ext2_filsys fs, int fd, int flags);
extern errcode_t ext2fs_image_super_read(ext2_filsys fs, int fd, int flags);
extern errcode_t ext2fs_image_bitmap_write(ext2_filsys fs, int fd, int flags);
extern errcode_t ext2fs_image_bitmap_read(ext2_filsys fs, int fd, int flags);


errcode_t ext2fs_read_ind_block(ext2_filsys fs, blk_t blk, void *buf);
errcode_t ext2fs_write_ind_block(ext2_filsys fs, blk_t blk, void *buf);


extern errcode_t ext2fs_initialize(const char *name, int flags,
       struct ext2_super_block *param,
       io_manager manager, ext2_filsys *ret_fs);


extern void ext2fs_free_icount(ext2_icount_t icount);
extern errcode_t ext2fs_create_icount_tdb(ext2_filsys fs, char *tdb_dir,
       int flags, ext2_icount_t *ret);
extern errcode_t ext2fs_create_icount2(ext2_filsys fs, int flags,
           unsigned int size,
           ext2_icount_t hint, ext2_icount_t *ret);
extern errcode_t ext2fs_create_icount(ext2_filsys fs, int flags,
          unsigned int size,
          ext2_icount_t *ret);
extern errcode_t ext2fs_icount_fetch(ext2_icount_t icount, ext2_ino_t ino,
         __u16 *ret);
extern errcode_t ext2fs_icount_increment(ext2_icount_t icount, ext2_ino_t ino,
      __u16 *ret);
extern errcode_t ext2fs_icount_decrement(ext2_icount_t icount, ext2_ino_t ino,
      __u16 *ret);
extern errcode_t ext2fs_icount_store(ext2_icount_t icount, ext2_ino_t ino,
         __u16 count);
extern ext2_ino_t ext2fs_get_icount_size(ext2_icount_t icount);
errcode_t ext2fs_icount_validate(ext2_icount_t icount, FILE *);



extern errcode_t ext2fs_get_memalign(unsigned long size,
         unsigned long align, void *ptr);


extern errcode_t ext2fs_inline_data_init(ext2_filsys fs, ext2_ino_t ino);
extern errcode_t ext2fs_inline_data_size(ext2_filsys fs, ext2_ino_t ino,
      size_t *size);
extern errcode_t ext2fs_inline_data_get(ext2_filsys fs, ext2_ino_t ino,
     struct ext2_inode *inode,
     void *buf, size_t *size);
extern errcode_t ext2fs_inline_data_set(ext2_filsys fs, ext2_ino_t ino,
     struct ext2_inode *inode,
     void *buf, size_t size);


extern errcode_t ext2fs_create_inode_cache(ext2_filsys fs,
        unsigned int cache_size);
extern void ext2fs_free_inode_cache(struct ext2_inode_cache *icache);
extern errcode_t ext2fs_flush_icache(ext2_filsys fs);
extern errcode_t ext2fs_get_next_inode_full(ext2_inode_scan scan,
         ext2_ino_t *ino,
         struct ext2_inode *inode,
         int bufsize);

extern errcode_t ext2fs_open_inode_scan(ext2_filsys fs, int buffer_blocks,
      ext2_inode_scan *ret_scan);
extern void ext2fs_close_inode_scan(ext2_inode_scan scan);
extern errcode_t ext2fs_get_next_inode(ext2_inode_scan scan, ext2_ino_t *ino,
          struct ext2_inode *inode);
extern errcode_t ext2fs_inode_scan_goto_blockgroup(ext2_inode_scan scan,
         int group);
extern void ext2fs_set_inode_callback
 (ext2_inode_scan scan,
  errcode_t (*done_group)(ext2_filsys fs,
     ext2_inode_scan scan,
     dgrp_t group,
     void * priv_data),
  void *done_group_data);
extern int ext2fs_inode_scan_flags(ext2_inode_scan scan, int set_flags,
       int clear_flags);
extern errcode_t ext2fs_read_inode_full(ext2_filsys fs, ext2_ino_t ino,
     struct ext2_inode * inode,
     int bufsize);
extern errcode_t ext2fs_read_inode (ext2_filsys fs, ext2_ino_t ino,
       struct ext2_inode * inode);
extern errcode_t ext2fs_write_inode_full(ext2_filsys fs, ext2_ino_t ino,
      struct ext2_inode * inode,
      int bufsize);
extern errcode_t ext2fs_write_inode(ext2_filsys fs, ext2_ino_t ino,
       struct ext2_inode * inode);
extern errcode_t ext2fs_write_new_inode(ext2_filsys fs, ext2_ino_t ino,
       struct ext2_inode * inode);
extern errcode_t ext2fs_get_blocks(ext2_filsys fs, ext2_ino_t ino, blk_t *blocks);
extern errcode_t ext2fs_check_directory(ext2_filsys fs, ext2_ino_t ino);


extern io_manager inode_io_manager;
extern errcode_t ext2fs_inode_io_intern(ext2_filsys fs, ext2_ino_t ino,
     char **name);
extern errcode_t ext2fs_inode_io_intern2(ext2_filsys fs, ext2_ino_t ino,
      struct ext2_inode *inode,
      char **name);


extern errcode_t ext2fs_check_if_mounted(const char *file, int *mount_flags);
extern errcode_t ext2fs_check_mount_point(const char *device, int *mount_flags,
       char *mtpt, int mtlen);






extern errcode_t ext2fs_punch(ext2_filsys fs, ext2_ino_t ino,
         struct ext2_inode *inode,
         char *block_buf, blk64_t start,
         blk64_t end);


extern errcode_t ext2fs_lookup(ext2_filsys fs, ext2_ino_t dir, const char *name,
    int namelen, char *buf, ext2_ino_t *inode);
extern errcode_t ext2fs_namei(ext2_filsys fs, ext2_ino_t root, ext2_ino_t cwd,
   const char *name, ext2_ino_t *inode);
errcode_t ext2fs_namei_follow(ext2_filsys fs, ext2_ino_t root, ext2_ino_t cwd,
         const char *name, ext2_ino_t *inode);
extern errcode_t ext2fs_follow_link(ext2_filsys fs, ext2_ino_t root, ext2_ino_t cwd,
   ext2_ino_t inode, ext2_ino_t *res_inode);


int ext2fs_native_flag(void);


extern errcode_t ext2fs_new_dir_block(ext2_filsys fs, ext2_ino_t dir_ino,
    ext2_ino_t parent_ino, char **block);
extern errcode_t ext2fs_new_dir_inline_data(ext2_filsys fs, ext2_ino_t dir_ino,
    ext2_ino_t parent_ino, __u32 *iblock);


extern errcode_t ext2fs_mkdir(ext2_filsys fs, ext2_ino_t parent, ext2_ino_t inum,
         const char *name);


extern errcode_t ext2fs_zero_blocks(ext2_filsys fs, blk_t blk, int num,
        blk_t *ret_blk, int *ret_count);
extern errcode_t ext2fs_zero_blocks2(ext2_filsys fs, blk64_t blk, int num,
         blk64_t *ret_blk, int *ret_count);
extern errcode_t ext2fs_create_journal_superblock(ext2_filsys fs,
        __u32 num_blocks, int flags,
        char **ret_jsb);
extern errcode_t ext2fs_add_journal_device(ext2_filsys fs,
        ext2_filsys journal_dev);
extern errcode_t ext2fs_add_journal_inode(ext2_filsys fs, blk_t num_blocks,
       int flags);
extern errcode_t ext2fs_add_journal_inode2(ext2_filsys fs, blk_t num_blocks,
        blk64_t goal, int flags);
extern int ext2fs_default_journal_size(__u64 num_blocks);
extern int ext2fs_journal_sb_start(int blocksize);


extern errcode_t ext2fs_open(const char *name, int flags, int superblock,
        unsigned int block_size, io_manager manager,
        ext2_filsys *ret_fs);
extern errcode_t ext2fs_open2(const char *name, const char *io_options,
         int flags, int superblock,
         unsigned int block_size, io_manager manager,
         ext2_filsys *ret_fs);





extern blk64_t ext2fs_descriptor_block_loc2(ext2_filsys fs,
     blk64_t group_block, dgrp_t i);
extern blk_t ext2fs_descriptor_block_loc(ext2_filsys fs, blk_t group_block,
      dgrp_t i);
errcode_t ext2fs_get_data_io(ext2_filsys fs, io_channel *old_io);
errcode_t ext2fs_set_data_io(ext2_filsys fs, io_channel new_io);
errcode_t ext2fs_rewrite_to_io(ext2_filsys fs, io_channel new_io);


extern errcode_t ext2fs_get_pathname(ext2_filsys fs, ext2_ino_t dir, ext2_ino_t ino,
          char **name);


errcode_t ext2fs_link(ext2_filsys fs, ext2_ino_t dir, const char *name,
        ext2_ino_t ino, int flags);
errcode_t ext2fs_unlink(ext2_filsys fs, ext2_ino_t dir, const char *name,
   ext2_ino_t ino, int flags);


errcode_t ext2fs_symlink(ext2_filsys fs, ext2_ino_t parent, ext2_ino_t ino,
    const char *name, char *target);


errcode_t ext2fs_mmp_read(ext2_filsys fs, blk64_t mmp_blk, void *buf);
errcode_t ext2fs_mmp_write(ext2_filsys fs, blk64_t mmp_blk, void *buf);
errcode_t ext2fs_mmp_clear(ext2_filsys fs);
errcode_t ext2fs_mmp_init(ext2_filsys fs);
errcode_t ext2fs_mmp_start(ext2_filsys fs);
errcode_t ext2fs_mmp_update(ext2_filsys fs);
errcode_t ext2fs_mmp_update2(ext2_filsys fs, int immediately);
errcode_t ext2fs_mmp_stop(ext2_filsys fs);
unsigned ext2fs_mmp_new_seq(void);


extern errcode_t ext2fs_read_bb_inode(ext2_filsys fs,
          ext2_badblocks_list *bb_list);


extern errcode_t ext2fs_read_bb_FILE2(ext2_filsys fs, FILE *f,
          ext2_badblocks_list *bb_list,
          void *priv_data,
          void (*invalid)(ext2_filsys fs,
            blk_t blk,
            char *badstr,
            void *priv_data));
extern errcode_t ext2fs_read_bb_FILE(ext2_filsys fs, FILE *f,
         ext2_badblocks_list *bb_list,
         void (*invalid)(ext2_filsys fs,
           blk_t blk));


extern errcode_t ext2fs_create_resize_inode(ext2_filsys fs);
# 1616 "ext2fs.h"
extern void ext2fs_sha512(const unsigned char *in, unsigned long in_size,
     unsigned char out[64]);


extern errcode_t ext2fs_dirent_swab_in2(ext2_filsys fs, char *buf, size_t size,
     int flags);
extern errcode_t ext2fs_dirent_swab_in(ext2_filsys fs, char *buf, int flags);
extern errcode_t ext2fs_dirent_swab_out2(ext2_filsys fs, char *buf, size_t size,
      int flags);
extern errcode_t ext2fs_dirent_swab_out(ext2_filsys fs, char *buf, int flags);
extern void ext2fs_swap_ext_attr(char *to, char *from, int bufsize,
     int has_header);
extern void ext2fs_swap_ext_attr_header(struct ext2_ext_attr_header *to_header,
     struct ext2_ext_attr_header *from_hdr);
extern void ext2fs_swap_ext_attr_entry(struct ext2_ext_attr_entry *to_entry,
           struct ext2_ext_attr_entry *from_entry);
extern void ext2fs_swap_super(struct ext2_super_block * super);
extern void ext2fs_swap_group_desc(struct ext2_group_desc *gdp);
extern void ext2fs_swap_group_desc2(ext2_filsys, struct ext2_group_desc *gdp);
extern void ext2fs_swap_inode_full(ext2_filsys fs, struct ext2_inode_large *t,
       struct ext2_inode_large *f, int hostorder,
       int bufsize);
extern void ext2fs_swap_inode(ext2_filsys fs,struct ext2_inode *t,
         struct ext2_inode *f, int hostorder);
extern void ext2fs_swap_mmp(struct mmp_struct *mmp);


extern int ext2fs_open_file(const char *pathname, int flags, mode_t mode);
extern int ext2fs_stat(const char *path, ext2fs_struct_stat *buf);
extern int ext2fs_fstat(int fd, ext2fs_struct_stat *buf);


extern int ext2fs_inode_has_valid_blocks(struct ext2_inode *inode);
extern int ext2fs_inode_has_valid_blocks2(ext2_filsys fs,
       struct ext2_inode *inode);


extern int ext2fs_parse_version_string(const char *ver_string);
extern int ext2fs_get_library_version(const char **ver_string,
          const char **date_string);


extern errcode_t ext2fs_write_bb_FILE(ext2_badblocks_list bb_list,
          unsigned int flags,
          FILE *f);
# 1721 "ext2fs.h"
extern __inline__ void ext2fs_init_csum_seed(ext2_filsys fs)
{
 if (!( (fs->super)->s_feature_ro_compat & (0x0400) )
                                          )
  return;

 fs->csum_seed = ext2fs_crc32c_le(~0, fs->super->s_uuid,
      sizeof(fs->super->s_uuid));
}






extern __inline__ errcode_t ext2fs_get_mem(unsigned long size, void *ptr)
{
 void *pp;

 pp = malloc(size);
 if (!pp)
  return (132254402234L);
 memcpy(ptr, &pp, sizeof (pp));
 return 0;
}

extern __inline__ errcode_t ext2fs_get_memzero(unsigned long size, void *ptr)
{
 void *pp;

 pp = malloc(size);
 if (!pp)
  return (132254402234L);
 memset(pp, 0, size);
 memcpy(ptr, &pp, sizeof(pp));
 return 0;
}

extern __inline__ errcode_t ext2fs_get_array(unsigned long count, unsigned long size, void *ptr)
{
 if (count && (~0UL)/count < size)
  return (132254402234L);
 return ext2fs_get_mem(count*size, ptr);
}

extern __inline__ errcode_t ext2fs_get_arrayzero(unsigned long count,
     unsigned long size, void *ptr)
{
 void *pp;

 if (count && (~0UL)/count < size)
  return (132254402234L);
 pp = calloc(count, size);
 if (!pp)
  return (132254402234L);
 memcpy(ptr, &pp, sizeof(pp));
 return 0;
}




extern __inline__ errcode_t ext2fs_free_mem(void *ptr)
{
 void *p;

 memcpy(&p, ptr, sizeof(p));
 free(p);
 p = 0;
 memcpy(ptr, &p, sizeof(p));
 return 0;
}




extern __inline__ errcode_t ext2fs_resize_mem(unsigned long __attribute__((unused)) old_size,
         unsigned long size, void *ptr)
{
 void *p;



 memcpy(&p, ptr, sizeof(p));
 p = realloc(p, size);
 if (!p)
  return (132254402234L);
 memcpy(ptr, &p, sizeof(p));
 return 0;
}





extern __inline__ void ext2fs_mark_super_dirty(ext2_filsys fs)
{
 fs->flags |= 0x04 | 0x02;
}




extern __inline__ void ext2fs_mark_changed(ext2_filsys fs)
{
 fs->flags |= 0x02;
}




extern __inline__ int ext2fs_test_changed(ext2_filsys fs)
{
 return (fs->flags & 0x02);
}




extern __inline__ void ext2fs_mark_valid(ext2_filsys fs)
{
 fs->flags |= 0x08;
}




extern __inline__ void ext2fs_unmark_valid(ext2_filsys fs)
{
 fs->flags &= ~0x08;
}




extern __inline__ int ext2fs_test_valid(ext2_filsys fs)
{
 return (fs->flags & 0x08);
}




extern __inline__ void ext2fs_mark_ib_dirty(ext2_filsys fs)
{
 fs->flags |= 0x10 | 0x02;
}




extern __inline__ void ext2fs_mark_bb_dirty(ext2_filsys fs)
{
 fs->flags |= 0x20 | 0x02;
}




extern __inline__ int ext2fs_test_ib_dirty(ext2_filsys fs)
{
 return (fs->flags & 0x10);
}




extern __inline__ int ext2fs_test_bb_dirty(ext2_filsys fs)
{
 return (fs->flags & 0x20);
}




extern __inline__ dgrp_t ext2fs_group_of_blk(ext2_filsys fs, blk_t blk)
{
 return ext2fs_group_of_blk2(fs, blk);
}



extern __inline__ dgrp_t ext2fs_group_of_ino(ext2_filsys fs, ext2_ino_t ino)
{
 return (ino - 1) / fs->super->s_inodes_per_group;
}




extern __inline__ blk_t ext2fs_group_first_block(ext2_filsys fs, dgrp_t group)
{
 return (blk_t) ext2fs_group_first_block2(fs, group);
}




extern __inline__ blk_t ext2fs_group_last_block(ext2_filsys fs, dgrp_t group)
{
 return (blk_t) ext2fs_group_last_block2(fs, group);
}

extern __inline__ blk_t ext2fs_inode_data_blocks(ext2_filsys fs,
     struct ext2_inode *inode)
{
 return (blk_t) ext2fs_inode_data_blocks2(fs, inode);
}




extern __inline__ unsigned int ext2fs_div_ceil(unsigned int a, unsigned int b)
{
 if (!a)
  return 0;
 return ((a - 1) / b) + 1;
}

extern __inline__ __u64 ext2fs_div64_ceil(__u64 a, __u64 b)
{
 if (!a)
  return 0;
 return ((a - 1) / b) + 1;
}

extern __inline__ int ext2fs_dirent_name_len(const struct ext2_dir_entry *entry)
{
 return entry->name_len & 0xff;
}

extern __inline__ void ext2fs_dirent_set_name_len(struct ext2_dir_entry *entry, int len)
{
 entry->name_len = (entry->name_len & 0xff00) | (len & 0xff);
}

extern __inline__ int ext2fs_dirent_file_type(const struct ext2_dir_entry *entry)
{
 return entry->name_len >> 8;
}

extern __inline__ void ext2fs_dirent_set_file_type(struct ext2_dir_entry *entry, int type)
{
 entry->name_len = (entry->name_len & 0xff) | (type << 8);
}
# 13 "ext2fsP.h" 2






struct ext2_struct_u32_list {
 int magic;
 int num;
 int size;
 __u32 *list;
 int badblocks_flags;
};

struct ext2_struct_u32_iterate {
 int magic;
 ext2_u32_list bb;
 int ptr;
};





struct ext2_struct_dblist {
 int magic;
 ext2_filsys fs;
 unsigned long long size;
 unsigned long long count;
 int sorted;
 struct ext2_db_entry2 * list;
};




struct dir_context {
 ext2_ino_t dir;
 int flags;
 char *buf;
 unsigned int buflen;
 int (*func)(ext2_ino_t dir,
      int entry,
      struct ext2_dir_entry *dirent,
      int offset,
      int blocksize,
      char *buf,
      void *priv_data);
 void *priv_data;
 errcode_t errcode;
};




struct ext2_inode_cache {
 void * buffer;
 blk64_t buffer_blk;
 int cache_last;
 unsigned int cache_size;
 int refcount;
 struct ext2_inode_cache_ent *cache;
};

struct ext2_inode_cache_ent {
 ext2_ino_t ino;
 struct ext2_inode *inode;
};



extern int ext2fs_process_dir_block(ext2_filsys fs,
        blk64_t *blocknr,
        e2_blkcnt_t blockcnt,
        blk64_t ref_block,
        int ref_offset,
        void *priv_data);

extern errcode_t ext2fs_inline_data_ea_remove(ext2_filsys fs, ext2_ino_t ino);
extern errcode_t ext2fs_inline_data_expand(ext2_filsys fs, ext2_ino_t ino);
extern int ext2fs_inline_data_dir_iterate(ext2_filsys fs,
       ext2_ino_t ino,
       void *priv_data);



struct ext2fs_numeric_progress_struct {
 __u64 max;
 int log_max;
 int skip_progress;
};




struct ext2fs_progress_ops {
 void (*init)(ext2_filsys fs,
       struct ext2fs_numeric_progress_struct * progress,
       const char *label, __u64 max);
 void (*update)(ext2_filsys fs,
         struct ext2fs_numeric_progress_struct * progress,
         __u64 val);
 void (*close)(ext2_filsys fs,
        struct ext2fs_numeric_progress_struct * progress,
        const char *message);
};

extern struct ext2fs_progress_ops ext2fs_numeric_progress_ops;

extern void ext2fs_numeric_progress_init(ext2_filsys fs,
      struct ext2fs_numeric_progress_struct * progress,
      const char *label, __u64 max);
extern void ext2fs_numeric_progress_update(ext2_filsys fs,
        struct ext2fs_numeric_progress_struct * progress,
        __u64 val);
extern void ext2fs_numeric_progress_close(ext2_filsys fs,
       struct ext2fs_numeric_progress_struct * progress,
       const char *message);





extern errcode_t ext2fs_alloc_generic_bmap(ext2_filsys fs, errcode_t magic,
        int type, __u64 start, __u64 end,
        __u64 real_end,
        const char * description,
        ext2fs_generic_bitmap *bmap);

extern void ext2fs_free_generic_bmap(ext2fs_generic_bitmap bmap);

extern errcode_t ext2fs_copy_generic_bmap(ext2fs_generic_bitmap src,
       ext2fs_generic_bitmap *dest);

extern errcode_t ext2fs_resize_generic_bmap(ext2fs_generic_bitmap bmap,
         __u64 new_end,
         __u64 new_real_end);
extern errcode_t ext2fs_fudge_generic_bmap_end(ext2fs_generic_bitmap bitmap,
            errcode_t neq,
            __u64 end, __u64 *oend);
extern int ext2fs_mark_generic_bmap(ext2fs_generic_bitmap bitmap,
        __u64 arg);
extern int ext2fs_unmark_generic_bmap(ext2fs_generic_bitmap bitmap,
          __u64 arg);
extern int ext2fs_test_generic_bmap(ext2fs_generic_bitmap bitmap,
        __u64 arg);
extern errcode_t ext2fs_set_generic_bmap_range(ext2fs_generic_bitmap bitmap,
            __u64 start, unsigned int num,
            void *in);
extern errcode_t ext2fs_get_generic_bmap_range(ext2fs_generic_bitmap bitmap,
            __u64 start, unsigned int num,
            void *out);
extern void ext2fs_warn_bitmap32(ext2fs_generic_bitmap bitmap,const char *func);

extern int ext2fs_mem_is_zero(const char *mem, size_t len);

extern int ext2fs_file_block_offset_too_big(ext2_filsys fs,
         struct ext2_inode *inode,
         blk64_t offset);


typedef void (*ext2_exit_fn)(void *);
errcode_t ext2fs_add_exit_fn(ext2_exit_fn fn, void *data);
errcode_t ext2fs_remove_exit_fn(ext2_exit_fn fn, void *data);
# 30 "gen_bitmap.c" 2

struct ext2fs_struct_generic_bitmap {
 errcode_t magic;
 ext2_filsys fs;
 __u32 start, end;
 __u32 real_end;
 char * description;
 char * bitmap;
 errcode_t base_error_code;
 __u32 reserved[7];
};
# 56 "gen_bitmap.c"
void ext2fs_warn_bitmap2(ext2fs_generic_bitmap bitmap,
       int code, unsigned long arg)
{

 if (bitmap->description)
  com_err(0, bitmap->base_error_code+code,
   "#%lu for %s", arg, bitmap->description);
 else
  com_err(0, bitmap->base_error_code + code, "#%lu", arg);

}

static errcode_t check_magic(ext2fs_generic_bitmap bitmap)
{
 if (!bitmap || !((bitmap->magic == (132254402294L)) ||
    (bitmap->magic == (132254402295L)) ||
    (bitmap->magic == (132254402296L))))
  return (132254402294L);
 return 0;
}

errcode_t ext2fs_make_generic_bitmap(errcode_t magic, ext2_filsys fs,
         __u32 start, __u32 end, __u32 real_end,
         const char *descr, char *init_map,
         ext2fs_generic_bitmap *ret)
{
 ext2fs_generic_bitmap bitmap;
 errcode_t retval;
 size_t size;

 retval = ext2fs_get_mem(sizeof(struct ext2fs_struct_generic_bitmap),
    &bitmap);
 if (retval)
  return retval;

 bitmap->magic = magic;
 bitmap->fs = fs;
 bitmap->start = start;
 bitmap->end = end;
 bitmap->real_end = real_end;
 switch (magic) {
 case (132254402295L):
  bitmap->base_error_code = (132254402256L);
  break;
 case (132254402296L):
  bitmap->base_error_code = (132254402259L);
  break;
 default:
  bitmap->base_error_code = (132254402243L);
 }
 if (descr) {
  retval = ext2fs_get_mem(strlen(descr)+1, &bitmap->description);
  if (retval) {
   ext2fs_free_mem(&bitmap);
   return retval;
  }
  strcpy(bitmap->description, descr);
 } else
  bitmap->description = 0;

 size = (size_t) (((bitmap->real_end - bitmap->start) / 8) + 1);

 size = (size + 7) & ~3;
 retval = ext2fs_get_mem(size, &bitmap->bitmap);
 if (retval) {
  ext2fs_free_mem(&bitmap->description);
  ext2fs_free_mem(&bitmap);
  return retval;
 }

 if (init_map)
  memcpy(bitmap->bitmap, init_map, size);
 else
  memset(bitmap->bitmap, 0, size);
 *ret = bitmap;
 return 0;
}

errcode_t ext2fs_allocate_generic_bitmap(__u32 start,
      __u32 end,
      __u32 real_end,
      const char *descr,
      ext2fs_generic_bitmap *ret)
{
 return ext2fs_make_generic_bitmap((132254402294L), 0,
       start, end, real_end, descr, 0, ret);
}

errcode_t ext2fs_copy_generic_bitmap(ext2fs_generic_bitmap src,
         ext2fs_generic_bitmap *dest)
{
 return (ext2fs_make_generic_bitmap(src->magic, src->fs,
        src->start, src->end,
        src->real_end,
        src->description, src->bitmap,
        dest));
}

void ext2fs_free_generic_bitmap(ext2fs_inode_bitmap bitmap)
{
 if (check_magic(bitmap))
  return;

 bitmap->magic = 0;
 if (bitmap->description) {
  ext2fs_free_mem(&bitmap->description);
  bitmap->description = 0;
 }
 if (bitmap->bitmap) {
  ext2fs_free_mem(&bitmap->bitmap);
  bitmap->bitmap = 0;
 }
 ext2fs_free_mem(&bitmap);
}

int ext2fs_test_generic_bitmap(ext2fs_generic_bitmap bitmap,
     blk_t bitno)
{
 if (!(((bitmap)->magic == (132254402294L)) || ((bitmap)->magic == (132254402296L)) || ((bitmap)->magic == (132254402295L)))) {
  if ((((bitmap)->magic == (132254402195L)) || ((bitmap)->magic == (132254402194L)) || ((bitmap)->magic == (132254402193L)))) {
   ext2fs_warn_bitmap32(bitmap, __func__);
   return ext2fs_test_generic_bmap(bitmap, bitno);
  }

  com_err(0, (132254402294L),
   "test_bitmap(%lu)", (unsigned long) bitno);

  return 0;
 }

 if ((bitno < bitmap->start) || (bitno > bitmap->end)) {
  ext2fs_warn_bitmap2(bitmap, 2, bitno);
  return 0;
 }
 return ext2fs_test_bit(bitno - bitmap->start, bitmap->bitmap);
}

int ext2fs_mark_generic_bitmap(ext2fs_generic_bitmap bitmap,
      __u32 bitno)
{
 if (!(((bitmap)->magic == (132254402294L)) || ((bitmap)->magic == (132254402296L)) || ((bitmap)->magic == (132254402295L)))) {
  if ((((bitmap)->magic == (132254402195L)) || ((bitmap)->magic == (132254402194L)) || ((bitmap)->magic == (132254402193L)))) {
   ext2fs_warn_bitmap32(bitmap, __func__);
   return ext2fs_mark_generic_bmap(bitmap, bitno);
  }

  com_err(0, (132254402294L),
   "mark_bitmap(%lu)", (unsigned long) bitno);

  return 0;
 }

 if ((bitno < bitmap->start) || (bitno > bitmap->end)) {
  ext2fs_warn_bitmap2(bitmap, 0, bitno);
  return 0;
 }
 return ext2fs_set_bit(bitno - bitmap->start, bitmap->bitmap);
}

int ext2fs_unmark_generic_bitmap(ext2fs_generic_bitmap bitmap,
        blk_t bitno)
{
 if (!(((bitmap)->magic == (132254402294L)) || ((bitmap)->magic == (132254402296L)) || ((bitmap)->magic == (132254402295L)))) {
  if ((((bitmap)->magic == (132254402195L)) || ((bitmap)->magic == (132254402194L)) || ((bitmap)->magic == (132254402193L)))) {
   ext2fs_warn_bitmap32(bitmap, __func__);
   return ext2fs_unmark_generic_bmap(bitmap, bitno);
  }

  com_err(0, (132254402294L),
   "mark_bitmap(%lu)", (unsigned long) bitno);

  return 0;
 }

 if ((bitno < bitmap->start) || (bitno > bitmap->end)) {
  ext2fs_warn_bitmap2(bitmap, 1, bitno);
  return 0;
 }
 return ext2fs_clear_bit(bitno - bitmap->start, bitmap->bitmap);
}

__u32 ext2fs_get_generic_bitmap_start(ext2fs_generic_bitmap bitmap)
{
 if (!(((bitmap)->magic == (132254402294L)) || ((bitmap)->magic == (132254402296L)) || ((bitmap)->magic == (132254402295L)))) {
  if ((((bitmap)->magic == (132254402195L)) || ((bitmap)->magic == (132254402194L)) || ((bitmap)->magic == (132254402193L)))) {
   ext2fs_warn_bitmap32(bitmap, __func__);
   return ext2fs_get_generic_bmap_start(bitmap);
  }

  com_err(0, (132254402294L),
   "get_bitmap_start");

  return 0;
 }

 return bitmap->start;
}

__u32 ext2fs_get_generic_bitmap_end(ext2fs_generic_bitmap bitmap)
{
 if (!(((bitmap)->magic == (132254402294L)) || ((bitmap)->magic == (132254402296L)) || ((bitmap)->magic == (132254402295L)))) {
  if ((((bitmap)->magic == (132254402195L)) || ((bitmap)->magic == (132254402194L)) || ((bitmap)->magic == (132254402193L)))) {
   ext2fs_warn_bitmap32(bitmap, __func__);
   return ext2fs_get_generic_bmap_end(bitmap);
  }

  com_err(0, (132254402294L),
   "get_bitmap_end");

  return 0;
 }
 return bitmap->end;
}

void ext2fs_clear_generic_bitmap(ext2fs_generic_bitmap bitmap)
{
 if (!(((bitmap)->magic == (132254402294L)) || ((bitmap)->magic == (132254402296L)) || ((bitmap)->magic == (132254402295L)))) {
  if ((((bitmap)->magic == (132254402195L)) || ((bitmap)->magic == (132254402194L)) || ((bitmap)->magic == (132254402193L)))) {
   ext2fs_warn_bitmap32(bitmap, __func__);
   ext2fs_clear_generic_bmap(bitmap);
   return;
  }

  com_err(0, (132254402294L),
   "clear_generic_bitmap");

  return;
 }

 memset(bitmap->bitmap, 0,
        (size_t) (((bitmap->real_end - bitmap->start) / 8) + 1));
}

errcode_t ext2fs_fudge_generic_bitmap_end(ext2fs_inode_bitmap bitmap,
       errcode_t magic, errcode_t neq,
       ext2_ino_t end, ext2_ino_t *oend)
{
 if (((bitmap)->magic) != (magic)) return (magic);

 if (end > bitmap->real_end)
  return neq;
 if (oend)
  *oend = bitmap->end;
 bitmap->end = end;
 return 0;
}

errcode_t ext2fs_resize_generic_bitmap(errcode_t magic,
           __u32 new_end, __u32 new_real_end,
           ext2fs_generic_bitmap bmap)
{
 errcode_t retval;
 size_t size, new_size;
 __u32 bitno;

 if (!bmap || (bmap->magic != magic))
  return magic;





 if (new_end > bmap->end) {
  bitno = bmap->real_end;
  if (bitno > new_end)
   bitno = new_end;
  for (; bitno > bmap->end; bitno--)
   ext2fs_clear_bit(bitno - bmap->start, bmap->bitmap);
 }
 if (new_real_end == bmap->real_end) {
  bmap->end = new_end;
  return 0;
 }

 size = ((bmap->real_end - bmap->start) / 8) + 1;
 new_size = ((new_real_end - bmap->start) / 8) + 1;

 if (size != new_size) {
  retval = ext2fs_resize_mem(size, new_size, &bmap->bitmap);
  if (retval)
   return retval;
 }
 if (new_size > size)
  memset(bmap->bitmap + size, 0, new_size - size);

 bmap->end = new_end;
 bmap->real_end = new_real_end;
 return 0;
}

errcode_t ext2fs_compare_generic_bitmap(errcode_t magic, errcode_t neq,
     ext2fs_generic_bitmap bm1,
     ext2fs_generic_bitmap bm2)
{
 blk_t i;

 if (!bm1 || bm1->magic != magic)
  return magic;
 if (!bm2 || bm2->magic != magic)
  return magic;

 if ((bm1->start != bm2->start) ||
     (bm1->end != bm2->end) ||
     (memcmp(bm1->bitmap, bm2->bitmap,
      (size_t) (bm1->end - bm1->start)/8)))
  return neq;

 for (i = bm1->end - ((bm1->end - bm1->start) % 8); i <= bm1->end; i++)
  if (ext2fs_fast_test_block_bitmap(bm1, i) !=
      ext2fs_fast_test_block_bitmap(bm2, i))
   return neq;

 return 0;
}

void ext2fs_set_generic_bitmap_padding(ext2fs_generic_bitmap map)
{
 __u32 i, j;


 for (i=map->end+1, j = i - map->start;
      i <= map->real_end && i > map->end;
      i++, j++)
  ext2fs_set_bit(j, map->bitmap);
}

errcode_t ext2fs_get_generic_bitmap_range(ext2fs_generic_bitmap bmap,
       errcode_t magic,
       __u32 start, __u32 num,
       void *out)
{
 if (!bmap || (bmap->magic != magic))
  return magic;

 if ((start < bmap->start) || (start+num-1 > bmap->real_end))
  return (132254402233L);

 memcpy(out, bmap->bitmap + (start >> 3), (num+7) >> 3);
 return 0;
}

errcode_t ext2fs_set_generic_bitmap_range(ext2fs_generic_bitmap bmap,
       errcode_t magic,
       __u32 start, __u32 num,
       void *in)
{
 if (!bmap || (bmap->magic != magic))
  return magic;

 if ((start < bmap->start) || (start+num-1 > bmap->real_end))
  return (132254402233L);

 memcpy(bmap->bitmap + (start >> 3), in, (num+7) >> 3);
 return 0;
}





int ext2fs_mem_is_zero(const char *mem, size_t len)
{
 static const char zero_buf[256];

 while (len >= sizeof(zero_buf)) {
  if (memcmp(mem, zero_buf, sizeof(zero_buf)))
   return 0;
  len -= sizeof(zero_buf);
  mem += sizeof(zero_buf);
 }

 if (len)
  return !memcmp(mem, zero_buf, len);
 return 1;
}




static int ext2fs_test_clear_generic_bitmap_range(ext2fs_generic_bitmap bitmap,
        unsigned int start,
        unsigned int len)
{
 size_t start_byte, len_byte = len >> 3;
 unsigned int start_bit, len_bit = len % 8;
 int first_bit = 0;
 int last_bit = 0;
 int mark_count = 0;
 int mark_bit = 0;
 int i;
 const char *ADDR = bitmap->bitmap;

 start -= bitmap->start;
 start_byte = start >> 3;
 start_bit = start % 8;

 if (start_bit != 0) {




  mark_count = 8 - start_bit;
  if (len < 8 - start_bit) {
   mark_count = (int)len;
   mark_bit = len + start_bit - 1;
  } else
   mark_bit = 7;

  for (i = mark_count; i > 0; i--, mark_bit--)
   first_bit |= 1 << mark_bit;





  if (first_bit & ADDR[start_byte])
   return 0;
  else if (len <= 8 - start_bit)
   return 1;

  start_byte++;
  len_bit = (len - mark_count) % 8;
  len_byte = (len - mark_count) >> 3;
 }





 if (len_bit != 0) {




  for (mark_bit = len_bit - 1; mark_bit >= 0; mark_bit--)
   last_bit |= 1 << mark_bit;





  if (last_bit & ADDR[start_byte + len_byte])
   return 0;
  else if (len_byte == 0)
   return 1;
 }


 return ext2fs_mem_is_zero(ADDR + start_byte, len_byte);
}

errcode_t ext2fs_find_first_zero_generic_bitmap(ext2fs_generic_bitmap bitmap,
      __u32 start, __u32 end,
      __u32 *out)
{
 blk_t b;

 if (start < bitmap->start || end > bitmap->end || start > end) {
  ext2fs_warn_bitmap2(bitmap, 2, start);
  return 22;
 }

 while (start <= end) {
  b = ext2fs_test_bit(start - bitmap->start, bitmap->bitmap);
  if (!b) {
   *out = start;
   return 0;
  }
  start++;
 }

 return 2;
}

errcode_t ext2fs_find_first_set_generic_bitmap(ext2fs_generic_bitmap bitmap,
            __u32 start, __u32 end,
            __u32 *out)
{
 blk_t b;

 if (start < bitmap->start || end > bitmap->end || start > end) {
  ext2fs_warn_bitmap2(bitmap, 2, start);
  return 22;
 }

 while (start <= end) {
  b = ext2fs_test_bit(start - bitmap->start, bitmap->bitmap);
  if (b) {
   *out = start;
   return 0;
  }
  start++;
 }

 return 2;
}

int ext2fs_test_block_bitmap_range(ext2fs_block_bitmap bitmap,
       blk_t block, int num)
{
 if (((bitmap)->magic) != ((132254402296L))) return ((132254402296L));
 if ((block < bitmap->start) || (block+num-1 > bitmap->real_end)) {
  ext2fs_warn_bitmap((132254402257L),
       block, bitmap->description);
  return 0;
 }
 return ext2fs_test_clear_generic_bitmap_range((ext2fs_generic_bitmap)
            bitmap, block, num);
}

int ext2fs_test_inode_bitmap_range(ext2fs_inode_bitmap bitmap,
       ino_t inode, int num)
{
 if (((bitmap)->magic) != ((132254402295L))) return ((132254402295L));
 if ((inode < bitmap->start) || (inode+num-1 > bitmap->real_end)) {
  ext2fs_warn_bitmap((132254402254L),
       inode, bitmap->description);
  return 0;
 }
 return ext2fs_test_clear_generic_bitmap_range((ext2fs_generic_bitmap)
            bitmap, inode, num);
}

void ext2fs_mark_block_bitmap_range(ext2fs_block_bitmap bitmap,
        blk_t block, int num)
{
 int i;

 if ((block < bitmap->start) || (block+num-1 > bitmap->end)) {
  ext2fs_warn_bitmap((132254402259L), block,
       bitmap->description);
  return;
 }
 for (i=0; i < num; i++)
  ext2fs_fast_set_bit(block + i - bitmap->start, bitmap->bitmap);
}

void ext2fs_unmark_block_bitmap_range(ext2fs_block_bitmap bitmap,
            blk_t block, int num)
{
 int i;

 if ((block < bitmap->start) || (block+num-1 > bitmap->end)) {
  ext2fs_warn_bitmap((132254402258L), block,
       bitmap->description);
  return;
 }
 for (i=0; i < num; i++)
  ext2fs_fast_clear_bit(block + i - bitmap->start,
          bitmap->bitmap);
}
