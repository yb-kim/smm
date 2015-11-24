
PROGRAM = test

SMMLIB=$(HOME)/Documents/smm/code/lib

INCLUDEDIRS=
INCLUDE=
LIBDIRS=
LIBS = -lm

OBJECTS = test.bc 
OPT_OBJECTS = code_manager.bc opt_test.bc 
CC=clang++
CFLAGS = $(INCLUDEDIRS) $(INCLUDE) -emit-llvm -c -O3 -fno-inline
LDFLAGS = $(LIBDIRS) $(LIBS) -static

all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	llvm-link -o basic_$@.bc $(OBJECTS)
	opt -O3 -disable-inlining < basic_$@.bc > $@.bc
	llvm-dis < $@.bc > $@.ll
	llc -O3 -o $@.s $@.bc 
	$(CC) -o $@ $@.s $(LDFLAGS)
	objdump -d $@ > $@.dis


%.bc: %.cpp
	$(CC) -I $(SMMLIB) -include code_manager.hpp $(CFLAGS) $< -o $@

cm: $(OPT_OBJECTS)
	llvm-link -o $@_raw_$(PROGRAM).bc $(OPT_OBJECTS)
	opt -O3 -disable-inlining -load $(HOME)/Applications/llvm/build/Debug+Asserts/lib/LLVMSMMCM.so -smmcm --debug-only=smmcm < $@_raw_$(PROGRAM).bc > $@_$(PROGRAM).bc
	llvm-dis < $@_$(PROGRAM).bc > $@_$(PROGRAM).ll
	llc -O3 -o $@_$(PROGRAM).s $@_$(PROGRAM).bc 
	$(CC) -o $@_$(PROGRAM) $@_$(PROGRAM).s $(LDFLAGS) -Wl,-T,spm.ld
	objdump -d $@_$(PROGRAM) > $@_$(PROGRAM).dis

code_manager.bc:$(SMMLIB)/code_manager.cpp
	$(CC) -I$(SMMLIB) -include code_manager.hpp $(CFLAGS) $< -o $@

opt_%.bc: %.cpp
	$(CC) -I$(SMMLIB) -include code_manager.hpp $(CFLAGS) $< -o $@

callgraph:
	opt -O3 -disable-inlining -dot-callgraph < basic_$(PROGRAM).bc
	dot -Tps callgraph.dot -o basic_$(PROGRAM).ps

clean:
	-rm -rf  $(PROGRAM) *.bc *.ll *.s *.dis *.dot *.ps  cm_$(PROGRAM) 
    
