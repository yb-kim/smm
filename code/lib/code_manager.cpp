#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <stack>
#include <string>
#include <vector>

using namespace std;

vector <region> _region_table;
vector <map> _mapping_table;

char* c_get(char *memAddr) 
{
	vector<map>::iterator ii, ie;
	// Find the function
	for (ii = _mapping_table.begin(), ie = _mapping_table.end(); ii != ie; ++ii) {
		if ((*ii).mem_addr ==  memAddr) {
			break;
		}
	}
	if (ii == _mapping_table.end()) {
		perror("c_get: function not found in mapping table!");
		exit(-1);
	}
	// The last element should always be the wrapper of main function, which will not be managed
	if(ii + 1 == _mapping_table.end()) {
		return NULL;
	}


	map m = *ii;
	// Check if the corresponding segment is currently in a SPM region, fetch it from memory to SPM if it is not present
	if (m.reg->mem_addr != memAddr) {
		//dma( m.spmAddr, m.memAddr, m.func_size, MEM2SPM);
		memcpy((void *)m.spm_addr, (void *)m.mem_addr, m.func_size);
		m.reg->mem_addr = memAddr;
	}
	return m.spm_addr;
}

int c_init_reg(int num, ...)
{
	va_list vl;
	va_start(vl,num);

	 // Initialize mapping table
	for (int i = 0; i < num; i++) {
		region r;
		r.mem_addr = va_arg(vl, char *);
		_region_table.push_back(r);
	}
	va_end(vl);
	return 0;
}

int c_init_map(int num, ...)
{
	va_list vl;
	va_start(vl,num);
	 // Initialize mapping table
	for (int i = 0; i  < num; i++) {
		map m;
		m.func_name = va_arg(vl, const char*);
		m.mem_addr = va_arg(vl, char *);
		m.spm_addr = va_arg(vl, char *);
		m.func_size = va_arg(vl, unsigned long);
		m.reg = va_arg(vl, region *);
		_mapping_table.push_back(m);
	}
	va_end(vl);
	return 0;
}

/*
template <typename calleeTy, typename retTy, typename argTy1>
retTy c_call(char* caller, calleeTy callee, argTy1 arg1)
{
	// Bring callee to SPM if it is not present
	calleeTy callee_spm = (calleeTy)c_get((char *)callee);
	// Under static mapping, function addresses are fixed, return address will not be changed, so nothing needs to be done
	// Jump to the callee
	retTy ret_val = callee_spm(arg1);
	// Ensure the caller (if any) is present at SPM when returning from callee
	c_get(caller);
	return ret_val;
}


template <typename calleeTy, typename retTy, typename argTy1, typename argTy2>
retTy c_call(char* caller, calleeTy callee, argTy1 arg1, argTy2 arg2)
{
	// Bring callee to SPM if it is not present
	calleeTy callee_spm = (calleeTy)c_get((char *)callee);
	// Under static mapping, function addresses are fixed, return address will not be changed, so nothing needs to be done
	// Jump to the callee
	retTy ret_val = callee_spm(arg1, arg2);
	// Ensure the caller (if any) is present at SPM when returning from callee
	c_get(caller);
	return ret_val;
}

template <typename calleeTy, typename retTy, typename argTy1, typename argTy2, typename argTy3>
retTy c_call(char* caller, calleeTy callee, argTy1 arg1, argTy2 arg2, argTy3 arg3)
{
	// Bring callee to SPM if it is not present
	calleeTy callee_spm = (calleeTy)c_get((char *)callee);
	// Under static mapping, function addresses are fixed, return address will not be changed, so nothing needs to be done
	// Jump to the callee
	retTy ret_val = callee_spm(arg1, arg2, arg3);
	// Ensure the caller (if any) is present at SPM when returning from callee
	c_get(caller);
	return ret_val;
}
*/
