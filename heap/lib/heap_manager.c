#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "dma.h"
#include "heap_manager.h"


#define getSP(sp) { __asm __volatile("mov %%rsp, %0;\n":"=m"(sp));}
#define putSP(sp) { __asm __volatile("mov %0, %%rsp;\n"::"m"(sp):"%rsp");}


extern char _end;
extern cache_t _hcache;

static inline unsigned long next_power_of_2(unsigned long num) {
    return (unsigned long)pow(2.0, ceil(log2((double)num)));
}
// return the tag of the given memory address
static inline unsigned long get_tag(unsigned long addr)
{
    return addr >> (_hcache.blk_ofs_len + _hcache.idx_len);
}

// return the set index of the given memory address
static inline unsigned long get_index(unsigned long addr)
{
    return addr << _hcache.tag_len >> (_hcache.tag_len + _hcache.blk_ofs_len);
}

// return the block offset of the given memory address
static inline unsigned long get_offset(unsigned long addr)
{
    unsigned len = _hcache.tag_len + _hcache.idx_len;
    return addr << len >> len;
}

// get the block address of the given memory address
static inline unsigned long get_blk_addr(unsigned long addr)
{
    return addr >> _hcache.blk_ofs_len << _hcache.blk_ofs_len;
}

int _heap_cache_init(unsigned long capacity, unsigned long assoc, unsigned long blk_size)
{
    unsigned long i, j = 0;

    unsigned long assoc_len;
    char *_hcache_metadata_sets, *_hcache_metadata_blks, *_hcache_data;

    // set up the cache semantics
    _hcache.assoc = next_power_of_2(assoc);
    _hcache.blk_size = next_power_of_2(blk_size);
    _hcache.num_blks = next_power_of_2(capacity) / blk_size;
    _hcache.num_sets = _hcache.num_blks / _hcache.assoc;

    _hcache.blk_ofs_len = (unsigned long)log2(_hcache.blk_size);
    _hcache.idx_len = (unsigned long)log2(_hcache.num_sets);
    _hcache.tag_len = sizeof(char *) * 8 - _hcache.idx_len - _hcache.blk_ofs_len;

    _hcache_metadata_sets = (char *)&_hcache + next_power_of_2(sizeof(cache_t));
    _hcache_metadata_blks = _hcache_metadata_sets + next_power_of_2(_hcache.num_sets * sizeof(set_t));
    _hcache_data = _hcache_metadata_blks + next_power_of_2(_hcache.num_blks * sizeof(blk_t));
    assoc_len = (unsigned long)log2(_hcache.assoc);

    _hcache.sets = (set_t *)_hcache_metadata_sets;
    //printf("&_hcache = 0x%lx, sizeof(cache_t) = 0x%lx, _hcache_metadata_sets = 0x%lx, _hcache.num_sets=%lu, sizeof(set_t)=%lu, _hcache_metadata_blks = 0x%lx, _hcache.num_blks=%lu, sizeof(blk_t)=%lu,  _hcache_data=0x%lx\n", \
	    (unsigned long)&_hcache, sizeof(cache_t), \
	    (unsigned long)(_hcache_metadata_sets), _hcache.num_sets, sizeof(set_t), \
	    (unsigned long)(_hcache_metadata_blks), _hcache.num_blks, sizeof(blk_t), \
	    (unsigned long)(_hcache_data));

    for (i = 0; i < _hcache.num_sets; ++i) {
	_hcache.sets[i].blks = (blk_t *)(_hcache_metadata_blks + (i << assoc_len) * sizeof(blk_t));
	//printf("\t_hcache.sets[%lu].blks=0x%lx\n", i, (unsigned long)_hcache.sets[i].blks);
	for (j = 0; j < _hcache.assoc; ++j) {
	    _hcache.sets[i].blks[j].status = INVALID;
	    _hcache.sets[i].blks[j].tag = 0;
	    _hcache.sets[i].blks[j].data = _hcache_data + (((i << assoc_len) + j) << _hcache.blk_ofs_len);
	    //printf("\t\t_hcache.sets[%lu].blks[%lu].data=0x%lx\n", i, j, (unsigned long)(_hcache.sets[i].blks[j].data));
	}
    }
    return 0;
}


char* _g2l(char *gaddr, int opcode) {
    unsigned long i;
    unsigned long addr, tag, idx, offset;
    unsigned long victim_counter;
    char *sp;
    char *laddr;
    blk_t *blk = NULL;
    set_t *set;

    getSP(sp);
    if (gaddr < &_end || gaddr >= sp) 
	return gaddr;
    addr = (unsigned long)gaddr;
    tag = get_tag(addr);
    idx = get_index(addr);
    offset = get_offset(addr);

    // Locate the set
    set = &_hcache.sets[idx];
    victim_counter = set->victim_counter;

    // Look for the required memory block
    for (i = 0; i < _hcache.assoc; ++i) {
	if (set->blks[i].status == INVALID)
	    continue;
	// Cache hit
	if (set->blks[i].tag == tag) {
	    //printf("cache hit\n");
	    blk = &set->blks[i];
	    break;
	}
    }
    // Cache miss
    if (!blk) {
	//printf("cache miss ");
	char *mem_blk_addr;
	blk = &set->blks[victim_counter];
	if (blk->status == DIRTY) {
	    mem_blk_addr = (char *)((blk->tag << _hcache.idx_len | idx) << _hcache.blk_ofs_len);
	    //printf("WB 0x%lx ", (unsigned long)mem_blk_addr);
	    dma(blk->data, mem_blk_addr, _hcache.blk_size, SPM2MEM);
	}
	blk->tag = tag;
	mem_blk_addr = (char *)get_blk_addr(addr);
	dma(blk->data, mem_blk_addr, _hcache.blk_size, MEM2SPM);
	//blk->status = VALID;
	set->victim_counter = (victim_counter+1) % _hcache.assoc;
	//printf("RD 0x%lx\n", (unsigned long)mem_blk_addr);
    }

    if (opcode == WRITE)
	blk->status = DIRTY;
    else if (opcode == READ)
	blk->status = VALID;

    //printf ("\taddr=0x%lx, index=%lu, tag=0x%lx, offset=0x%lx, blk->data=0x%lx\n", addr, idx, tag, offset, (unsigned long)blk->data);
    return blk->data + offset;
}

