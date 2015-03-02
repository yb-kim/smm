#!/bin/sh
SIMDIR=$HOME/Applications/gem5_cml
$SIMDIR/build/X86/gem5.debug --debug-flags=Stack $SIMDIR/configs/example/se.py -c ./example --cpu-type=atomic
$SIMDIR/build/X86/gem5.debug --debug-flags=Stack $SIMDIR/configs/example/se.py -c ./example_opt --cpu-type=atomic
