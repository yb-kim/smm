#!/bin/sh
simdir=$HOME/Applications/gem5_smm
#runme_small
$simdir/build/X86/gem5.debug $simdir/configs/example/se.py --caches --cpu-type=timing -c crc -o "large.pcm" --output=output_small.txt
#$simdir/build/X86/gem5.debug $simdir/configs/example/se.py --caches --cpu-type=timing -c crc -o "../adpcm/data/large.pcm" --output=output_small.txt
#runme_large
