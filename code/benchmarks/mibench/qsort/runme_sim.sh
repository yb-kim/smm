#!/bin/sh
simdir=$HOME/Applications/gem5_smm
#runme_small
#$simdir/build/X86/gem5.debug $simdir/configs/example/se.py -c qsort -o input_small.dat --output=output_small.text --caches --cpu-type=timing
$simdir/build/X86/gem5.debug $simdir/configs/example/se.py -c qsort_trans -o input_small.dat --output=output_small_trans.text --caches --cpu-type=timing
#runme_large
