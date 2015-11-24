PROGRAM = test_func

INCLUDEDIRS= 
INCLUDE= 
LIBDIRS = 
LIBS = -lm

OBJECTS = main.bc
CXX=clang++
CXXFLAGS = $(INCLUDEDIRS) $(INCLUDE) -std=gnu++11 -O0
LDFLAGS = $(LIBDIRS) $(LIBS) -static

all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CXX) -o $@ $(OBJECTS) $(LDFLAGS)
%.bc: %.cpp
	$(CXX) -c -emit-llvm $(CXXFLAGS) $< -o $@

clean:
	-rm -f  $(PROGRAM) $(PROGRAM)_trans *.bc 
