#ifndef __CODE_HPP__
#define __CODE_HPP__

#include <vector>

using namespace std;

struct region {
	char *mem_addr;
};

struct map {
	const char *func_name;
	char *mem_addr;
	char *spm_addr;
	unsigned long func_size;
	region *reg;
};

extern vector <region> _region_table;
extern vector <map> _mapping_table;

char* c_get(char *memAddr);
int c_init_reg(int num, ...);
int c_init_map(int num, ...);

#endif
