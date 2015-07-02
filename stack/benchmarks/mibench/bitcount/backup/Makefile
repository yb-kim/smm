PROGRAM = bitcnts 
INCLUDEDIRS =
LIBDIRS =
LIBS =
#CC = gcc
CC = clang
CFLAGS = $(INCLUDEDIRS) -O3
LDFLAGS = $(LIBDIRS) $(LIBS) -static

FILE = bitcnt_1.c bitcnt_2.c bitcnt_3.c bitcnt_4.c bitcnts.c bitfiles.c bitstrng.c bstr_i.c 

all: $(PROGRAM)

bitcnts: ${FILE} Makefile
	$(CC) $(CFLAGS) $(FILE) -o bitcnts $(LDFLAGS)

clean:
	rm -rf bitcnts output*
