#ifndef __STACK_MANAGEMENT_HELPER_H__
#define __STACK_MANAGEMENT_HELPER_H__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define getSP(sp) { __asm __volatile("mov %%rsp, %0;\n":"=m"(sp));}
#define putSP(sp) { __asm __volatile("mov %0, %%rsp;\n"::"m"(sp):"%rsp");}

typedef struct {
    char func_name[20]; // name of a function
    long ssize; // size of stack frame
} STACK_SIZE;

extern char *_sp_calling, *_sp_called;
extern char *_func_name;
extern STACK_SIZE _func_stack_sizes[50];

void _get_stack_size();
void _dump_stack_size();
#endif
