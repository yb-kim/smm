#!/bin/sh
simdir=$HOME/Applications/gem5_smm
$simdir/build/X86/gem5.debug $simdir/configs/example/se.py --cpu-type=timing -c dijkstra -o input.dat --output=output_small.dat
