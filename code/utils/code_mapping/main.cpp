#include <cstdlib>
#include <iostream>
#include <string>

#include "calc_cost.h"

int main(int argc, char **argv) {
    unsigned long spmSize = argc > 1 ? strtoul(argv[1], NULL, 10) : 512;
    std::cout << "SPM: " << spmSize << "\n";
    std::string path = "_exec_trace";
    CostCalculator calculator;
    calculator.parse(path);
    //CostCalculator::printGraph(calculator.getHead());
    calculator.calculateCost(spmSize);
    return 0;
}
