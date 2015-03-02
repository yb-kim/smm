PROGRAM = test

SMMDIR=/home/jcai/Documents/gem5/programs/smm_stack_manager/lib

INCLUDEDIRS=-I$(SMMDIR)
INCLUDE=-include stack_manager.h
LIBDIRS= 
LIBS = -lm 

OBJECTS = stack_manager.bc test.bc
CC=clang
CFLAGS = $(INCLUDEDIRS) $(INCLUDE) -O0
LDFLAGS = $(LIBDIRS) $(LIBS) -static -Wl,-T,spm.ld

all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	llvm-link -o $@.bc $(OBJECTS)
	$(CC) -o $@ $@.bc $(LDFLAGS)
	llvm-dis < $@.bc > $@.ll
	llc -march=cpp $@.ll -o $@_ll.cpp
	objdump -d $@ > $@.dis
	opt -load /home/jcai/Applications/llvm/build/Debug+Asserts/lib/LLVMSmmStack.so -smm-stack < $@.bc > $@_opt.bc
	$(CC) $@_opt.bc -o $@_opt $(LDFLAGS) 
	llvm-dis < $@_opt.bc > $@_opt.ll
	objdump -d $@_opt > $@_opt.dis

stack_manager.bc:$(SMMDIR)/stack_manager.c
	$(CC) -emit-llvm -c $(CFLAGS) $< -o $@

%.bc: %.c
	$(CC) -emit-llvm -c $(CFLAGS) $< -o $@

clean:
	-rm -f  $(PROGRAM) $(PROGRAM)_opt *.s *.bc *.ll *_ll.cpp *.dis
