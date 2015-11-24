PROGRAM = stringsearch

INCLUDEDIRS=-I/home/jcai/Applications/gem5_smm/jcai/programs/code
INCLUDE=-include code.hpp
LIBDIRS= 
LIBS = -lm 

OBJECTS = code.bc bmhasrch.bc  bmhisrch.bc  bmhsrch.bc  pbmsrch_small.bc
CXX=clang++
CXXFLAGS = $(INCLUDEDIRS) $(INCLUDE) -O0 
LD=llvm-link
#LDFLAGS = $(LIBDIRS) $(LIBS) -static -Wl,-T,default.ld
LDFLAGS = $(LIBDIRS) $(LIBS) -static

all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(LD) -o $@.bc $(OBJECTS)
	$(CXX) -o $@ $@.bc $(LDFLAGS)
	llvm-dis < $@.bc > $@.ll
	llc -march=cpp $@.ll -o $@_ll.cpp
	llvm-objdump -disassemble $@ > $@.dis
	opt -load /home/jcai/Applications/llvm/build/Debug+Asserts/lib/LLVMSMM.so -code < $@.bc > $@_trans.bc
	$(CXX) $@_trans.bc -o $@_trans $(LDFLAGS) 
	llvm-dis < $@_trans.bc > $@_trans.ll
	llvm-objdump -disassemble $@_trans > $@_trans.dis
code.bc:/home/jcai/Applications/gem5_smm/jcai/programs/code/code.cpp
	$(CXX) -c -emit-llvm $(CXXFLAGS) $< -o $@
%.bc: %.cpp
	$(CXX) -c -emit-llvm $(CXXFLAGS) $< -o $@

clean:
	-rm -f  $(PROGRAM) $(PROGRAM)_trans *.bc *.ll *_ll.cpp *.dis

	
