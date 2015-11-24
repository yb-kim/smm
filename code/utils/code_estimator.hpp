#ifndef __code_estimator_hpp__
#define __code_estimator_hpp__

#include <iostream>
#include <cstring>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

struct Mapping {
	char *func_name;
	char *mem_addr;
	char *spm_addr;
	unsigned long func_size;
	//region *reg;
};

vector <Mapping> _mapping_table;

int get_func_size (string file_name)
{
	unsigned long begin_addr = 0, end_addr = 0;
	string str, func_name;
	ifstream fin;
	fin.open(file_name);

	// Locate the first user-defined function
	while(getline(fin,str)) {
		size_t pos = str.find("_Z");
		if(pos != string::npos) {
			if (!isdigit(str[pos+2]))
				continue;
			func_name = str.substr(0, str.find_first_of(":"));
			fin >> hex >> begin_addr;
			break;
		}
	}
	// Collect sizes for user-defined functions
	while(getline(fin,str)) {
		// Save next function name
		if(str[0] == '_' || isalpha(str[0])) {
			string next_func_name = str.substr(0, str.find_first_of(":"));
			fin >> hex >> end_addr;
			// Calculate function size if the function is user-defined
			size_t pos = func_name.find("_Z");
			if(pos != string::npos) {
				if (isdigit(func_name[pos+2])) {
					Mapping m;
					m.func_name = new char [func_name.length()+1];
					strcpy (m.func_name, func_name.c_str());
					m.mem_addr = (char*)begin_addr;
				       	m.spm_addr = NULL;
				       	m.func_size = end_addr - begin_addr;
					_mapping_table.push_back(m);
				}
			}
			func_name = next_func_name;
			begin_addr = end_addr;
		}
	}
	fin.close();
	return 0;
}

#endif
