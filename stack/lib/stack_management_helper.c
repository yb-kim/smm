#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "stack_management_helper.h"

char *_sp_calling, *_sp_called;
char *_func_name;
long _num_funcs = 0;
STACK_SIZE _func_stack_size[50];

// get size of stack for the function specified by func_name 
void _get_func_stack_size() {
    // read current value of stack pointer
    getSP(_sp_called); 
    // offset the displacement of stack pointer caused by current function (not needed if compilers inline this function)
    _sp_called += 0x8; 

    if ( !strcmp("smm_main", _func_name) )
	_func_name = "main";
    // calculate the size of the caller stack frame
    long i; 
    for (i = 0; i < _num_funcs; i++) {
	if ( !strcmp(_func_stack_size[i].func_name, _func_name) )
	    break;
    }
    if (i >= _num_funcs) {
	strcpy(_func_stack_size[_num_funcs].func_name, _func_name); 
	_func_stack_size[_num_funcs].ssize = _sp_calling - _sp_called;
	_num_funcs++;
	assert(_num_funcs < 50);
    }
}

void _dump_func_stack_sizes() {
    FILE *fp;
    //printf("Dumping ...\n");
    fp = fopen("wcg_nodes.txt", "w");
    for (long i = 0; i < _num_funcs; i++) {
	fprintf(fp, "%s %ld\n", _func_stack_size[i].func_name, _func_stack_size[i].ssize);
    }
    fclose(fp);
}
