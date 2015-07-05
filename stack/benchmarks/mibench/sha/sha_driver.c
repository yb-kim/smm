/* NIST Secure Hash Algorithm */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "sha.h"

#ifdef STAT
extern unsigned long _num_dma, _dma_size, _num_sstore, _num_sload, _num_l2g, _num_g2l, _num_ptr_wr;
#endif

int main(int argc, char **argv)
{
    FILE *fin;
    SHA_INFO sha_info;

    if (argc < 2) {
	fin = stdin;
	sha_stream(&sha_info, fin);
	sha_print(&sha_info);
    } else {
	while (--argc) {
	    fin = fopen(*(++argv), "rb");
	    if (fin == NULL) {
		printf("error opening %s for reading\n", *argv);
	    } else {
		sha_stream(&sha_info, fin);
		sha_print(&sha_info);
		fclose(fin);
	    }
	}
    }
#ifdef STAT
    fprintf(stderr, "_num_dma=%lu, _dma_size=%lu, _num_sstore=%lu, _num_sload=%lu, _num_l2g=%lu, _num_g2l=%lu, _num_ptr_wr=%lu\n", _num_dma, _dma_size,  _num_sstore, _num_sload, _num_l2g, _num_g2l, _num_ptr_wr);
#endif

    return(0);
}
