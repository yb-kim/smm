#include <iostream>
#include "code_estimator.hpp"

using namespace std;


int main(int argc, char **argv) 
{
	string file_name = (argc > 1 ? argv[1] : "dijkstra.dis");
	get_func_size(file_name);
	for (vector<Mapping>::iterator ii = _mapping_table.begin(), ie = _mapping_table.end(); ii != ie; ii++) {
		cout << ii->func_name << " 0x" << hex << (unsigned long)ii->mem_addr << " 0x" << ii->func_size << "\n";
	}
	return 0;
}
