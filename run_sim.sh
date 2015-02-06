#!/bin/sh
simdir=$HOME/Applications/gem5_smm
#$simdir/build/X86/gem5.debug --debug-flags=Stack,Fetch,Exec $simdir/configs/example/se.py -c test_stack_manager --cpu-type=timing > log
$simdir/build/X86/gem5.debug --debug-flags=Stack $simdir/configs/example/se.py -c test_stack_manager --cpu-type=timing
