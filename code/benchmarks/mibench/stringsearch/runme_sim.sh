#!/bin/sh
simdir=$HOME/Applications/gem5_smm
#runme_small
#$simdir/build/X86/gem5.debug $simdir/configs/example/se.py --caches --cpu-type=timing -c stringsearch --output=output_small.txt
$simdir/build/X86/gem5.debug --debug-flags=Fetch,Exec $simdir/configs/example/se.py --caches --cpu-type=timing -c stringsearch_trans --output=output_small_trans.txt > runme_log
#runme_large
