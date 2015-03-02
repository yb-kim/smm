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

	// function call
	f2_ret = f2(c, d);
	printf("\tf1: f2 returns %d\n", f2_ret); 

	return f2_ret;

}

int f2(int a, int b) {
	int f3_ret, f4_ret;
	int c = a+b;
	printf("\t\tf2: calls f3(0x%llx = %d, %d, %d)\n", (unsigned long long)&c, c, a-b, a*b);
	int *p = (int *)_l2g((char *)&c);
	f3_ret = f3(p, a-b, a*b);
	printf("\t\tf2: f3 returns %d, c = %d\n", f3_ret, c);
	printf("\t\tf2: calls f4(%d)\n", f3_ret/2);
	f4_ret = f4(f3_ret/2);
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
	f4_ret = f4(a+1) - 1;
	return f4_ret;
}

int main(int arg, char **argv)
{
	// workload
	printf("main: _spm_stack_base=0x%llx, _mem_stack_base=0x%llx\n", (unsigned long long)_spm_stack_base, (unsigned long long)_mem_stack_base);
	printf("main: calls f1(%d, %d)\n", 3, 4);
	printf("main: f1 returns %d\n", f1(3, 4));

	return 0;
}
