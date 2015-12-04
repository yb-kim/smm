#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include "code_manager.h"

Region *_region_table;
Map *_mapping_table;
int mapping_table_size;
int region_table_size;

int c_init_reg(int num, ...) {
    int i;
    va_list vl;
    va_start(vl, num);

    region_table_size = num;
    _region_table = (Region *)malloc(sizeof(Region) * num);
    for(i=0; i<num; i++) {
	//_region_table[i].spm_addr = va_arg(vl, char *);
	_region_table[i].func_name = NULL;
    }
    va_end(vl);

    return 0;
}

int c_init_map(int num, ...) {
    int i;
    va_list vl;
    va_start(vl, num);

    mapping_table_size = num;
    _mapping_table = (Map *)malloc(sizeof(Map) * num);
    for (i=0; i<num; i++) {
	_mapping_table[i].func_name = va_arg(vl, const char*);
	_mapping_table[i].func_lma = va_arg(vl, char *);
	_mapping_table[i].func_vma = va_arg(vl, char *);
	_mapping_table[i].func_size = va_arg(vl, unsigned long);
	_mapping_table[i].reg = va_arg(vl, Region *);
    }
    va_end(vl);
    return 0;
}

char* c_get(char *func_name) {
    int i;
    Map *map;
    for(i=0; i<mapping_table_size; i++) {
	map = &_mapping_table[i];
	if(!strcmp(func_name, map->func_name)) break;
    }

    if(i == mapping_table_size) {
	printf("cannot find mapping\n");
	exit(-1);
    }

    if(strcmp(func_name, map->reg->func_name)) {
	memcpy(map->func_vma, map->func_lma, map->func_size);
	strcpy(map->reg->func_name, func_name);
    }
    return map->func_vma;
}
