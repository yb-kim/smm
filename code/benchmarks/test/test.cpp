#include <stdio.h>
#include <string.h>

//extern char spm_code;
char spm_code[4096];

int f1(int);
int f2(int, int);
double f3(double, double, double);
void f4();
int f5(int, int);

int f1(int i)
{
	return f2(33, 67) + 10*i;
	//auto c_call_abs = c_call<decltype(&f2), int, int, int>;
	//return c_call_abs((char *)f1, f2, 33, 67) + 10 * i;
}

int f2(int a, int b)
{
	return f3(1.0, 5.0, 1.0) + a * b;
	//auto c_call_abs = c_call<decltype(&f3), double, double, double, double>;
	//return c_call_abs((char *)f2, f3, 1.0, 5.0, 1.0) + a * b;
}

double f3(double a, double b, double c)
{
	return b + a*c;
}

void f4()
{
	printf("%d\n", f5(3, 4));
}

int f5(int c, int d)
{
	return c*c + d*d;
}

int c_main(int arg, char **argv)
{
	char A[] = "Xiaoliuliu";
	char B[] = "LoveU";
	//auto ptr = memcpy;
	//ptr(A, B, strlen(B));
	memcpy(A, B, strlen(B));
	printf("%d\n", f1(18));
	return 0;
}

int main(int arg, char **argv)
{
	/*
	// Initialize region table
	_region_table.resize(1);
	_region_table[0].mem_addr = NULL;
	// Initialize mapping table
	_mapping_table.resize(4);
	_mapping_table[0].func_name = "f1", _mapping_table[0].mem_addr = (char *)f1, _mapping_table[0].spm_addr = (char *)&spm_code, _mapping_table[0].func_size = 0x50, _mapping_table[0].reg = &_region_table[0];
	_mapping_table[1].func_name = "f2", _mapping_table[1].mem_addr = (char *)f2, _mapping_table[1].spm_addr = (char *)&spm_code, _mapping_table[1].func_size = 0x80, _mapping_table[1].reg = &_region_table[0];
	_mapping_table[2].func_name = "f3", _mapping_table[2].mem_addr = (char *)f3, _mapping_table[2].spm_addr = (char *)&spm_code, _mapping_table[2].func_size = 0x30, _mapping_table[2].reg = &_region_table[0];
	_mapping_table[3].func_name = "c_main", _mapping_table[3].mem_addr = (char *)c_main, _mapping_table[3].spm_addr = (char *)&spm_code, _mapping_table[3].func_size = 0x70, _mapping_table[3].reg = &_region_table[0];
	*/

	// Initialize region table
	c_init_reg(1, NULL);
	region *r = &_region_table[0];
	// Initialize mapping table
	c_init_map(4, 
			"f1", (char *)f1, (char *)&spm_code, 0x50, r, 
			"f2", (char *)f2, (char *)&spm_code, 0x80, r,
			"f3", (char *)f3, (char *)&spm_code, 0x30, r, 
			"c_main", (char *)c_main, (char *)&spm_code, 0x70, r 
			);
	// Call the real main function
	c_main(arg, argv);
	//cout << sizeof(unsigned long) << " " << sizeof(uint64_t) << "\n";
	return 0;
}
