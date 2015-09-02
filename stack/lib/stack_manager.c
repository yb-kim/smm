#include <string.h>
#include <stddef.h>

#include "stack_manager.h"
#include "dma.h"

// stack Management Library

extern char _spm_begin, _spm_end;
char *_spm_stack_base, *_mem_stack_base;
long long int _stack_depth = 0;
STACK_ENTRY _stack[20];

// Pointer management
static char *sp, *gaddr, *laddr;

// evict oldest stack frames to make space for callee
void _sstore() {
    // move caller stack frame from SPM to memory
    getSP(_stack[_stack_depth].spm_addr); // read current value of stack pointer
    _stack[_stack_depth].spm_addr += 0x8; // offset the displacement of stack pointer caused by _sstore function (not needed if compilers inline this function)
    _stack[_stack_depth].ssize = _spm_stack_base - _stack[_stack_depth].spm_addr; // calculate the size of the caller stack frame

    if (_stack_depth == 0) { // call stack is empty
	//_stack[_stack_depth].ssize = _spm_stack_base - _stack[_stack_depth].spm_addr; // calculate the size of the caller stack frame
	_stack[_stack_depth].mem_addr = _mem_stack_base - _stack[_stack_depth].ssize; // reserve space for caller stack frame in memory
    }
    else { // call stack is not empty
	//_stack[_stack_depth].ssize = _stack[_stack_depth-1].spm_addr - _stack[_stack_depth].spm_addr; // calculate the size of the caller stack frame
	_stack[_stack_depth].mem_addr = _stack[_stack_depth-1].mem_addr - _stack[_stack_depth].ssize; // calculate the size of the caller stack frame
    }
    _stack[_stack_depth].status = 0; // update status of function stack to indicate it is in memory
    //memcpy((void *)_stack[_stack_depth].mem_addr, (void *)_stack[_stack_depth].spm_addr, _stack[_stack_depth].ssize); // copy caller stack frame from SPM to memory
    dma(_stack[_stack_depth].spm_addr, _stack[_stack_depth].mem_addr, _stack[_stack_depth].ssize, SPM2MEM);	// copy caller stack frame from SPM to memory
    _stack_depth++; // increase stack depth counter
    //putSP(_spm_stack_base); // reset the stack pointer to SPM stack base
}

// ensure the caller stack frame is in SPM
void _sload() {
    // bring back caller stack frame from memory to SPM
    //putSP(_spm_sp); // restore the stack pointer to point to the original location in SPM
    _stack_depth--; // decrease stack depth counter
    //memcpy((void *)_stack[_stack_depth].spm_addr, (void *)_stack[_stack_depth].mem_addr, _stack[_stack_depth].ssize);// copy back caller stack frame from memory to SPM
    dma((void *)_stack[_stack_depth].spm_addr, (void *)_stack[_stack_depth].mem_addr, _stack[_stack_depth].ssize, MEM2SPM);// copy back caller stack frame from memory to SPM
}

// pointer threats resolution
char * _l2g(char *laddr)
{
    // do address translation only if the address passed in is in the current stack frame
    gaddr = laddr; // set return value to the passed in address by default
    getSP(sp); // get current value of stack pointer
    sp += 0x8; // offset the displacement of stack pointer caused by _l2g function (not needed if compilers inline this function)
    // calculate the offset from the beginning of the current stack frame to the address
    if (_stack_depth == 0) {
	if (laddr >= sp && laddr < _spm_stack_base) {
	    gaddr = _mem_stack_base - (_spm_stack_base - laddr);
	}
    } else {
	if (laddr >= sp && laddr < _spm_stack_base) {
	    gaddr = _stack[_stack_depth-1].mem_addr - (_spm_stack_base - laddr);
	}
    }
    return gaddr;
}

char * _g2l(char *gaddr, unsigned long size) {
    // do address translation only if the address passed in is in the current stack frame
    laddr = gaddr; // set return value to the passed in address by default
    getSP(sp); // get current value of stack pointer
    sp += 0x8; // offset the displacement of stack pointer caused by _g2l function (not needed if compilers inline this function)
    if (_stack_depth == 0) {
	if (gaddr >= _mem_stack_base - (_spm_stack_base - sp) && gaddr < _mem_stack_base) {
	    laddr = _spm_stack_base - (_mem_stack_base - gaddr);
	}
    } else {
	if (gaddr >= _stack[_stack_depth-1].mem_addr - (_spm_stack_base - sp) && gaddr < _stack[_stack_depth-1].mem_addr) {
	    laddr = _spm_stack_base - (_stack[_stack_depth-1].mem_addr - gaddr);
	}
    }

    return laddr;
}

void _ptr_wr(char *gaddr, unsigned long size) {
}
