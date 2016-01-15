#ifndef __HEAP_MANAGER_H__
#define __HEAP_MANAGER_H__


enum cache_line_state {INVALID, VALID, DIRTY};
enum opcode_t {READ, WRITE};

typedef struct _blk_t blk_t;
typedef struct _set_t set_t;
typedef struct _cache_t cache_t;


struct _blk_t {
    int status;
    unsigned long tag;
    char *data;
};

struct _set_t {
    blk_t *blks;
    unsigned long victim_counter;
};

struct _cache_t {
    unsigned long assoc;
    unsigned long blk_size;
    unsigned long num_sets;
    unsigned long num_blks;
    unsigned long tag_len;
    unsigned long idx_len;
    unsigned long blk_ofs_len;
    set_t * sets;
};

// Initialize the cache semantics. Align arguments to be power of 2
int _heap_cache_init(unsigned long capacity, unsigned long assoc, unsigned long blk_size);

// Return the SPM location for holding the value of the given memory address
char* _g2l(char *gaddr, int opcode);

#endif
