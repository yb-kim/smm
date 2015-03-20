#ifndef __STACK_H__
#define __STACK_H__

#define getSP(sp) { __asm __volatile("mov %%rsp, %0;\n":"=m"(sp));}
#define putSP(sp) { __asm __volatile("mov %0, %%rsp;\n"::"m"(sp):"%rsp");}

typedef struct {
	char *spm_addr; // location when present in SPM
	char *mem_addr; // location if evicted to memory
	unsigned long long ssize; // size of stack frame
	int status; // --1: resides in SPM; --0 : resides in memory
} STACK_ENTRY;

extern char _spm_begin, _spm_end;
extern char *_spm_stack_base, *_mem_stack_base;
extern long long int _stack_depth;
extern STACK_ENTRY _stack[20];

void _sstore() __attribute__((noinline));
void _sload() __attribute__((noinline));

char * _l2g(char *) __attribute__((noinline));
char * _g2l(char *) __attribute__((noinline));

#endif
