PROGRAM = dijkstra

INCLUDEDIRS=-I /home/jcai/Applications/gem5_smm/jcai/programs/code
INCLUDE=-include code.hpp
LIBDIRS = 
LIBS = -lm

OBJECTS = dijkstra_small.bc
CXX=clang++
CXXFLAGS = $(INCLUDEDIRS) $(INCLUDE) -O0
LDFLAGS = $(LIBDIRS) $(LIBS) -static

all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CXX) -o $@ $(OBJECTS) $(LDFLAGS)
	llvm-dis < $(OBJECTS) > $(PROGRAM).ll
	llc -march=cpp $(PROGRAM).ll -o $(PROGRAM)_ll.cpp
	llvm-objdump -disassemble $(PROGRAM) > $(PROGRAM).dis
	opt -load /home/jcai/Applications/llvm/build/Debug+Asserts/lib/LLVMSMM.so -codemnm < $(OBJECTS) > $(PROGRAM)_trans.bc
	$(CXX) $(PROGRAM)_trans.bc -o $(PROGRAM)_trans $(LDFLAGS) 
	llvm-dis < $(PROGRAM)_trans.bc > $(PROGRAM)_trans.ll
	#llvm-objdump -disassemble $(PROGRAM)_trans > $(PROGRAM)_trans.dis
	objdump -d $(PROGRAM)_trans > $(PROGRAM)_trans.dis
%.bc: %.cpp
	$(CXX) -c -emit-llvm $(CXXFLAGS) $< -o $@

clean:
	-rm -f  $(PROGRAM) $(PROGRAM)_trans *.bc *.ll *_ll.cpp *.dis

	
