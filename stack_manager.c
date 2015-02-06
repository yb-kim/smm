#include <string.h>

// SMM stack Management Library

extern char _spm_begin, _spm_end;
char *_spm_stack_base, *_mem_stack_base;
long long int _stack_depth = 0;
STACK_ENTRY _stack[20];

// begin the runtime environment for stack management
void _smm_stack_begin() {
	getSP(_mem_stack_base); // save the original value of stack pointer pointing to memory location
	_spm_stack_base = &_spm_end; // use the upper bound of SPM address range as the new stack base
	putSP(_spm_stack_base); // make stack pointer point to the new stack base in SPM
}

// end the runtime environment
void _smm_stack_end() {
	putSP(_mem_stack_base);
}

void _sstore() {
	// move caller stack from SPM to memory
	getSP(_stack[_stack_depth].spm_addr); // read current value of stack pointer
	_stack[_stack_depth].spm_addr += 0x10; // offset the displacement of stack pointer due to sstore function
	_stack[_stack_depth].ssize = _spm_stack_base - _stack[_stack_depth].spm_addr; // calculate the stack size of the caller
	if (_stack_depth == 0) {
		//_stack[_stack_depth].ssize = _spm_stack_base - _stack[_stack_depth].spm_addr; // calculate the stack size of the caller
		_stack[_stack_depth].mem_addr = _mem_stack_base - _stack[_stack_depth].ssize; // reserve memory space for caller
	}
	else {
		//_stack[_stack_depth].ssize = _stack[_stack_depth-1].spm_addr - _stack[_stack_depth].spm_addr; // calculate the stack size of the caller
		_stack[_stack_depth].mem_addr = _stack[_stack_depth-1].mem_addr - _stack[_stack_depth].ssize; // reserve memory space for caller
	}
	_stack[_stack_depth].status = 0; // update status of function stack to indicate it is in memory
	memcpy((void *)_stack[_stack_depth].mem_addr, (void *)_stack[_stack_depth].spm_addr, _stack[_stack_depth].ssize); // copy caller stack from SPM to memory
	_stack_depth++; // increase stack depth counter
	//putSP(_spm_stack_base); // reset the stack pointer to SPM stack base
}

void _sload() {
	// bring back caller stack from memory to SPM
	//putSP(_spm_sp); // restore the stack pointer to point to the original location in SPM
	_stack_depth--; // decrease stack depth counter
	memcpy((void *)_stack[_stack_depth].spm_addr, (void *)_stack[_stack_depth].mem_addr, _stack[_stack_depth].ssize);// copy back caller stack from memory to SPM
}

/*
char *sp, *gaddr, *lddr;

char* _l2g(char *laddr)
{
	// do address translation only if the address passed in is in the current stack frame
	gaddr = laddr; // set return value to the passed in address by default
	getSP(sp); // get current value of stack pointer
	sp += 0x18; // offset the displacement of stack pointer caused by l2g function
	// calculate the offset from the beginning of the current stack frame to the address
	if (_stack_depth == 0) {
		if (laddr >= sp && laddr < _spm_stack_base) {
			gaddr = _mem_stack_base - (_spm_stack_base - laddr);
		}
	} else {
		if (laddr >= sp && laddr < _stack[_stack_depth-1].spm_addr) {
			gaddr = _stack[_stack_depth-1].mem_addr - (_spm_stack_base - laddr);
		}
	}
	return gaddr;
}

char *_g2l()
{
	// do address translation only if the address passed in is in the current stack frame
	laddr = gaddr;
}
*/
