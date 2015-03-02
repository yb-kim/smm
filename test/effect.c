#include <stdio.h>
#include <string.h>

int g = 0;

int f1(int, int);
int f2(int, int);
int f3(int *, int, int);
int f4(int);

int f1(int a, int b) {
	int c = a + b, d = a*b;
	int f2_ret;

	printf("\tf1: calls f2(%d, %d)\n", c, d); 
	// move caller stack from SPM to memory
	_sstore();
	putSP(_spm_stack_base); // reset the stack pointer to SPM stack base

	// function call
	g = f2(c, d);
	// bring back caller stack from memory to SPM
	putSP(_stack[_stack_depth-1].spm_addr); // restore the stack pointer to point to the original location in SPM
	_sload();
	f2_ret = g;
	printf("\tf1: f2 returns %d\n", f2_ret); 

	return f2_ret;

}

int f2(int a, int b) {
	int f3_ret, f4_ret;
	int c = a+b;
	printf("\t\tf2: calls f3(0x%llx = %d, %d, %d)\n", (unsigned long long)&c, c, a-b, a*b);
	int *p = (int *)_l2g((char *)&c);
	_sstore();
	putSP(_spm_stack_base); // reset the stack pointer to SPM stack base
	g = f3(p, a-b, a*b);
	putSP(_stack[_stack_depth-1].spm_addr); // restore the stack pointer to point to the original location in SPM
	_sload();
	f3_ret = g;
	printf("\t\tf2: f3 returns %d, c = %d\n", f3_ret, c);
	printf("\t\tf2: calls f4(%d)\n", f3_ret/2);
	_sstore();
	putSP(_spm_stack_base); // reset the stack pointer to SPM stack base
	g = f4(f3_ret/2);
	putSP(_stack[_stack_depth-1].spm_addr); // restore the stack pointer to point to the original location in SPM
	_sload();
	f4_ret = g;
	printf("\t\tf2: f4 returns %d\n", f4_ret);
	return f4_ret;
}

int f3(int *a, int b, int c) {
	char *sp_temp;
	getSP(sp_temp);
	*(int *)_g2l((char *)a) = 6;
	//printf("\t\t\tf3:a=0x%llx = %d, b=%d, c=%d, sp = 0x%llx\n", (unsigned long long)a, *a, b, c, (unsigned long long)sp_temp);
	return  *(int *)_g2l((char *)a) + b - c;
}

int f4(int a) {
	int f4_ret;
	if (a == 0)
		return 0;
	_sstore();
	putSP(_spm_stack_base); // reset the stack pointer to SPM stack base
	g = f4(a+1) - 1;
	putSP(_stack[_stack_depth-1].spm_addr); // restore the stack pointer to point to the original location in SPM
	_sload();
	f4_ret = g;
	return f4_ret;
}

int main(int arg, char **argv)
{
	// begin the runtime environment for stack management
	getSP(_mem_stack_base); // save the original value of stack pointer pointing to memory location
	_spm_stack_base = &_spm_end; // use the upper bound of SPM address range as the new stack base
	putSP(_spm_stack_base); // make stack pointer point to the new stack base in SPM
	//__asm __volatile("mov %0, %%rsp;\n"::"m"(_spm_stack_base):"%rsp");
	
	// workload
	printf("main: _spm_stack_base=0x%llx, _mem_stack_base=0x%llx\n", (unsigned long long)_spm_stack_base, (unsigned long long)_mem_stack_base);
	printf("main: calls f1(%d, %d)\n", 3, 4);
	printf("main: f1 returns %d\n", f1(3, 4));

	// end the runtime environment
	putSP(_mem_stack_base);
	return 0;
}
