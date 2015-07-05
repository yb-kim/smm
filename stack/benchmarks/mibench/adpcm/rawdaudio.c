/* testd - Test adpcm decoder */

#include "adpcm.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

struct adpcm_state state;

#define NSAMPLES 1000

#ifdef STAT
extern unsigned long _num_dma, _dma_size, _num_sstore, _num_sload, _num_l2g, _num_g2l, _num_ptr_wr;
#endif


char	abuf[NSAMPLES/2];
short	sbuf[NSAMPLES];

int main() {
    int n;

    while(1) {
	n = read(0, abuf, NSAMPLES/2);
	if ( n < 0 ) {
	    perror("input file");
	    exit(1);
	}
	if ( n == 0 ) break;
	adpcm_decoder(abuf, sbuf, n*2, &state);
	write(1, sbuf, n*4);
    }
    fprintf(stderr, "Final valprev=%d, index=%d\n",
	    state.valprev, state.index);
#ifdef STAT
    fprintf(stderr, "_num_dma=%lu, _dma_size=%lu, _num_sstore=%lu, _num_sload=%lu, _num_l2g=%lu, _num_g2l=%lu, _num_ptr_wr=%lu\n", _num_dma, _dma_size,  _num_sstore, _num_sload, _num_l2g, _num_g2l, _num_ptr_wr);
#endif

    return 0;
    //exit(0);
}
