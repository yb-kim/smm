#!/bin/sh
GEM5_DIR=$HOME/Applications/gem5_smm
#$GEM5_DIR/build/X86/gem5.debug --debug-flags=Stack $GEM5_DIR/configs/example/se.py -c ./example --cpu-type=timing
$GEM5_DIR/build/X86/gem5.debug --debug-flags=Stack,Fetch,SimpleCPU,DRAM $GEM5_DIR/configs/example/se.py -c ./example --cpu-type=timing > log
#gdb --args $GEM5_DIR/build/X86/gem5.debug --debug-flags=Stack,Fetch,SimpleCPU,DRAM $GEM5_DIR/configs/example/se.py -c ./example --cpu-type=atomic
