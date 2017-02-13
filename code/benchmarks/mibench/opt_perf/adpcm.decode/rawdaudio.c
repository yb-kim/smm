/* testd - Test adpcm decoder */

#include "adpcm.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

struct adpcm_state state;

#define NSAMPLES 1000

char	abuf[NSAMPLES/2];
short	sbuf[NSAMPLES];

int main() {
    int n;

    "__SPLIT_START";
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
    "__SPLIT_END";
    fprintf(stderr, "Final valprev=%d, index=%d\n",
	    state.valprev, state.index);

    return 0;
    //exit(0);
}
