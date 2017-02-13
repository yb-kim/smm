#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "sha.h"

#define f1(x,y,z) ((x & y) | (~x & z))
#define f2(x,y,z) (x ^ y ^ z)
#define f3(x,y,z) ((x & y) | (x & z) | (y & z))
#define f4(x,y,z) (x ^ y ^ z)



#define CONST1 0x5a827999L
#define CONST2 0x6ed9eba1L
#define CONST3 0x8f1bbcdcL
#define CONST4 0xca62c1d6L



#define ROT32(x,n) ((x << n) | (x >> (32 - n)))

#define FUNC(n,i) temp = ROT32(A,5) + f ##n(B,C,D) + E + W[i] + CONST ##n; E = D; D = C; C = ROT32(B,30); B = A; A = temp





static void sha_transform(SHA_INFO *sha_info)
{
    int i;
    LONG temp, A, B, C, D, E, W[80];

    for (i = 0; i < 16; ++i) {
 W[i] = sha_info->data[i];
    }
    for (i = 16; i < 80; ++i) {
 W[i] = W[i-3] ^ W[i-8] ^ W[i-14] ^ W[i-16];



    }
    A = sha_info->digest[0];
    B = sha_info->digest[1];
    C = sha_info->digest[2];
    D = sha_info->digest[3];
    E = sha_info->digest[4];

    for (i = 0; i < 20; ++i) {
 temp = ((A << 5) | (A >> (32 - 5))) + ((B & C) | (~B & D)) + E + W[i] + 0x5a827999L; E = D; D = C; C = ((B << 30) | (B >> (32 - 30))); B = A; A = temp;
    }
    for (i = 20; i < 40; ++i) {
 temp = ((A << 5) | (A >> (32 - 5))) + (B ^ C ^ D) + E + W[i] + 0x6ed9eba1L; E = D; D = C; C = ((B << 30) | (B >> (32 - 30))); B = A; A = temp;
    }
    "__SPLIT_START";
    for (i = 40; i < 60; ++i) {
 temp = ((A << 5) | (A >> (32 - 5))) + ((B & C) | (B & D) | (C & D)) + E + W[i] + 0x8f1bbcdcL; E = D; D = C; C = ((B << 30) | (B >> (32 - 30))); B = A; A = temp;
    }
    for (i = 60; i < 80; ++i) {
 temp = ((A << 5) | (A >> (32 - 5))) + (B ^ C ^ D) + E + W[i] + 0xca62c1d6L; E = D; D = C; C = ((B << 30) | (B >> (32 - 30))); B = A; A = temp;
    }

    sha_info->digest[0] += A;
    sha_info->digest[1] += B;
    sha_info->digest[2] += C;
    sha_info->digest[3] += D;
    sha_info->digest[4] += E;
    "__SPLIT_END";
}





static void byte_reverse(LONG *buffer, int count)
{
    int i;
    BYTE ct[4], *cp;

    count /= sizeof(LONG);
    cp = (BYTE *) buffer;
    for (i = 0; i < count; ++i) {
 ct[0] = cp[0];
 ct[1] = cp[1];
 ct[2] = cp[2];
 ct[3] = cp[3];
 cp[0] = ct[3];
 cp[1] = ct[2];
 cp[2] = ct[1];
 cp[3] = ct[0];
 cp += sizeof(LONG);
    }
}





void sha_init(SHA_INFO *sha_info)
{
    sha_info->digest[0] = 0x67452301L;
    sha_info->digest[1] = 0xefcdab89L;
    sha_info->digest[2] = 0x98badcfeL;
    sha_info->digest[3] = 0x10325476L;
    sha_info->digest[4] = 0xc3d2e1f0L;
    sha_info->count_lo = 0L;
    sha_info->count_hi = 0L;
}



void sha_update(SHA_INFO *sha_info, BYTE *buffer, int count)
{
    if ((sha_info->count_lo + ((LONG) count << 3)) < sha_info->count_lo) {
 ++sha_info->count_hi;
    }
    sha_info->count_lo += (LONG) count << 3;
    sha_info->count_hi += (LONG) count >> 29;
    while (count >= 128) {
 memcpy(sha_info->data, buffer, 128);

 byte_reverse(sha_info->data, 128);

 sha_transform(sha_info);
 buffer += 128;
 count -= 128;
    }
    memcpy(sha_info->data, buffer, count);
}



void sha_final(SHA_INFO *sha_info)
{
    int count;
    LONG lo_bit_count, hi_bit_count;

    lo_bit_count = sha_info->count_lo;
    hi_bit_count = sha_info->count_hi;
    count = (int) ((lo_bit_count >> 3) & 0x3f);
    ((BYTE *) sha_info->data)[count++] = 0x80;
    if (count > 56) {
 memset((BYTE *) &sha_info->data + count, 0, 64 - count);

 byte_reverse(sha_info->data, 128);

 sha_transform(sha_info);
 memset(&sha_info->data, 0, 56);
    } else {
 memset((BYTE *) &sha_info->data + count, 0, 56 - count);
    }

    byte_reverse(sha_info->data, 128);

    sha_info->data[14] = hi_bit_count;
    sha_info->data[15] = lo_bit_count;
    sha_transform(sha_info);
}



#define BLOCK_SIZE 8192

void sha_stream(SHA_INFO *sha_info, FILE *fin)
{
    int i;
    BYTE data[8192];

    sha_init(sha_info);
    while ((i = fread(data, 1, 8192, fin)) > 0) {
 sha_update(sha_info, data, i);
    }
    sha_final(sha_info);
}



void sha_print(SHA_INFO *sha_info)
{
    printf("%08lx %08lx %08lx %08lx %08lx\n",
 sha_info->digest[0], sha_info->digest[1], sha_info->digest[2],
 sha_info->digest[3], sha_info->digest[4]);
}
