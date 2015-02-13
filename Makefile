PROGRAM = example

SMMDIR=/home/jcai/Documents/gem5/programs/smm/stack_management/stack_manager

INCLUDEDIRS=-I $(SMMDIR)
INCLUDE=-include stack_manager.h
LIBDIRS= 
LIBS = -lm 

OBJECTS = stack_manager.bc example.bc
CC=clang
CFLAGS = $(INCLUDEDIRS) $(INCLUDE) -O0
LDFLAGS = $(LIBDIRS) $(LIBS) -static -Wl,-T,spm.ld

all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	llvm-link -o $@.bc $(OBJECTS)
	$(CC) -o $@ $@.bc $(LDFLAGS)
	objdump -d $@ > $@.dis
stack.s:$(SMMDIR)/stack_manager.c
	$(CC) -emit-llvm -c $(CFLAGS) $< -o $@
%.bc: %.c
	$(CC) -emit-llvm -c $(CFLAGS) $< -o $@

clean:
	-rm -f  $(PROGRAM) *.bc *.dis

	
