/*
 * mm.c - Segregated free lists version.
 * Initialization of the heap : [Padding | HEADER | PREV | NEXT | payload | FOOTER | next HEADER ]
 * Allocated block format     : [Size+a | Payload and padding | Size+a]
 * Free block format          : [Size+a | NEXT | PREV | free space | Size+a]
 * Free list                  : Virtual lists made by linking pointers of previous free block to newly freed block.
 * Allocation policy          : FIFO with Segregated free lists
 *                                   - Eack newly freed block is added to the front of the virtual list. Its PREV pointer is NULL and NEXT one gives the next free block.
 *                                   - Each newly allocated block is removed from virtual free list.
 * Coalescing                 : Performed each time a block is freed in order to avoid fragmentation.
 * Splitting                  : Performed in the place() function to avoid internal fragmentation.
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "101100",
    /* First member's full name */
    "Achille Nazaret",
    /* First member's email address */
    "achille.nazaret@polytechnique.edu",
    /* Second member's full name (leave blank if none) */
    "Antoine Carossio",
    /* Second member's email address (leave blank if none) */
    "antoine.carossio@polytechnique.edu"
};

/* CONSTANTS */
#define WSIZE             4   // Word and header/footer size (bytes)
#define ALIGNMENT         8   // single word (4) or double word (8) alignment
#define N_FREE_LISTS      15  // Number of segregated free lists
#define CHUNKSIZE         16  // Extend heap by this amount (bytes)
#define MINSIZE           24  // Minimum size of a block
#define SPLIT_LIMIT       120
#define SPARE_SIZE        128 // If there is less than 128 extra bytes, freeze the next block so it can only be used by reallocation
#define MAX_INT           2147483647 // Max signed int (assume size are smaller than this guy)

/* Macros from the original file */
#define ALIGN(size)       (((size) + (ALIGNMENT-1)) & ~0x7) // (x+7) - ((x+7) - (x+7)/8 * 8) : rounds up to the nearest multiple of ALIGNMENT
#define SIZE_T_SIZE       (ALIGN(sizeof(size_t))) // Aligned size_t
#define MAX(x, y)         ((x) > (y)? (x) : (y)) // Max between x and y
#define PACK(size, alloc) ((size) | (alloc)) // Pack a size and allocated bit into a word [Size|a]
#define GET(p)            (*(unsigned int*)(p)) // Read the value at p
#define PUT(p, val)       (*(unsigned int*)(p) = (val))  // Write val at p
#define UNPACK_SIZE(p)    (GET(p) & ~0x7) // Extract the size of the memory location pointed by p
#define UNPACK_ALLOC(p)   (GET(p) & 0x1) // Read the allocated bit
#define GET_SIZE(p)       UNPACK_SIZE(HDRP(p)) // Read the size of the allocated block pointed by p
#define GET_ALLOC(p)      UNPACK_ALLOC(HDRP(p)) // Read the size of the allocated block pointed by p
#define HDRP(bp)          ((void*)(bp) - WSIZE) // Returns a pointer to the header of p
#define FTRP(bp)          ((void*)(bp) + GET_SIZE(bp)) - 2*WSIZE // Returns a pointer to the footer of p
#define NEXT_BLKP(bp)     ((void*)(bp) + GET_SIZE(bp)) // Pointer to the next block
#define PREV_BLKP(bp)     ((void*)(bp) - UNPACK_SIZE(HDRP(bp) - WSIZE)) // Pointer to the previous block

/* Additional macros (to manipulate the free lists) */
#define NEXT_FREE_BLKP(bp)         (*(void **)(bp + 2*WSIZE)) // Pointer to the next free block
#define PREV_FREE_BLKP(bp)         (*(void **)(bp)) // Pointer to the previous free block
#define SET_REALLOCATION_LOCK(p)   GET(HDRP(p)) |= 2
#define RESET_REALLOCATION_LOCK(p) GET(HDRP(p)) &= ~2
#define CHECK_REALLOCATION_LOCK(p) GET(HDRP(p)) & 2

/* Global variables for Segregated free lists */
static int free_lists_max_size[N_FREE_LISTS] = {32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 12000, 15000, 19000, 25000, 32000, MAX_INT};
static char *free_lists_start[N_FREE_LISTS] = {NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL};
static char *heap_list_start = 0; // Pointer to the first block
//static char *free_list_start = 0; // Pointer to first block


/* Function prototypes for internal helper routines (from the reference book) */
static void *extend_heap(size_t words);

static void place(void *bp, size_t asize);

static void *find_fit(size_t asize);

static void *coalesce(void *bp);

static void printblock(void *bp);

static void checkheap(int verbose);

static void checkblock(void *bp);

/* Additional prototypes (to manipulate the free lists) */
static void insert_free(void *bp);

static void remove_free(void *bp);

static void print_bytes(void *ptr, int size);

static void print_heap(void);


/////////////////////////////////////// HELPER ROUTINES ///////////////////////////////////////

/**
 * get_free_list_index - Return the index in which a block of this size should be placed
 */
static inline int get_free_list_index(unsigned int size) {
    int i;
    for (i = 0; i < N_FREE_LISTS; i++) {
        if (size < free_lists_max_size[i])
            return i;
    }
    // Impossible
    //assert(0);
    return N_FREE_LISTS + 10;
}

/**
 * insert_free - Insert a block keeping the list sorted
 */
static void insert_free(void *bp) {
    unsigned int size = GET_SIZE(bp);
    int index = get_free_list_index(size);
    char *next_ptr = free_lists_start[index];
    char *prev_ptr = NULL;
    
    if(next_ptr == NULL){
        // The list is empty
        NEXT_FREE_BLKP(bp) = NULL;
        PREV_FREE_BLKP(bp) = NULL;
        free_lists_start[index] = bp;
    } else {
        while(next_ptr != NULL && GET_SIZE(next_ptr) < size){
            prev_ptr = next_ptr;
            next_ptr = NEXT_FREE_BLKP(next_ptr);
        }
        // Here GET_SIZE(next_ptr) >= size > GET_SIZE(prev_ptr)
        NEXT_FREE_BLKP(bp) = next_ptr; // Set the next pointer
        PREV_FREE_BLKP(bp) = prev_ptr; // Set the previous pointer
        if (prev_ptr != NULL)
            NEXT_FREE_BLKP(prev_ptr) = bp; // Set the next pointer
        else
            free_lists_start[index] = bp;
        
        if (next_ptr != NULL)
            PREV_FREE_BLKP(next_ptr) = bp; // Set the previous pointer
    }
}

/**
 * remove_free - Remove block in the free list
 */
static void remove_free(void *bp) {
    unsigned int size = GET_SIZE(bp);
    int index = get_free_list_index(size);
    if (PREV_FREE_BLKP(bp)) { // If the current block has a previous block in the free list…
        // … set the next pointer of the previous block to next block
        NEXT_FREE_BLKP(PREV_FREE_BLKP(bp)) = NEXT_FREE_BLKP(bp);
    } else { // If the current block don't have a previous block in the free list
        // … set the new start of the free list to the next block
        free_lists_start[index] = NEXT_FREE_BLKP(bp);
    }
    
    if (NEXT_FREE_BLKP(bp)) // If the current block is not the last one (has a next bloc), set the previous pointer
        PREV_FREE_BLKP(NEXT_FREE_BLKP(bp)) = PREV_FREE_BLKP(bp);
    
}

/**
 * set_size - Simple a shorthand to set the size of a block header/footer at the same time
 * [Save two operations also but doesn't seem to have a perf impact :(]
 */
static inline void set_size(void *ptr, unsigned int size, int allocation_flag) {
    PUT(HDRP(ptr), PACK(size, allocation_flag));
    PUT(ptr + size - 2 * WSIZE, PACK(size, allocation_flag));
}

/**
 * coalesce - Coalescing free blocks with potential adjencent ones, with a LIFO policy
 */
static void *coalesce(void *bp) {
    
    // Get allocation status of the previous and next blocks
    size_t prev_alloc = GET_ALLOC(PREV_BLKP(bp));
    size_t next_alloc = GET_ALLOC(NEXT_BLKP(bp));
    
    size_t size = GET_SIZE(bp); // Size of current block
    
    // Case 1: Both adjacent blocks are unallocated
    if (!prev_alloc && !next_alloc) {
        size += GET_SIZE(PREV_BLKP(bp)) + GET_SIZE(NEXT_BLKP(bp)); // Add sizes of the current, previous and next blocks
        remove_free(PREV_BLKP(bp)); // Remove the previous block from the free list
        remove_free(NEXT_BLKP(bp)); // Remove the next block from the free list
        bp = PREV_BLKP(bp); // Set the block pointer to the previous block
        set_size(bp, size, 0);
        insert_free(bp);
        //PUT(HDRP(bp), PACK(size, 0)); // Set the allocated bit to unallocated in the header…
        //PUT(FTRP(bp), PACK(size, 0)); // … and footer of the new block
    }
    // Case 2: Only the previous block is free
    else if (!prev_alloc && next_alloc) {
        bp = PREV_BLKP(bp); // Set the block pointer to the previous block
        size += GET_SIZE(bp); // Add sizes of the current and the previous blocks
        remove_free(bp); // Remove the previous block from the free list
        set_size(bp, size, 0);
        insert_free(bp);
        //PUT(HDRP(bp), PACK(size, 0)); // Set the allocated bit to unallocated in the header…
        //PUT(FTRP(bp), PACK(size, 0)); // … and footer of the new block
    }
    // Case 3: Only the next block is free
    else if (prev_alloc && !next_alloc) {
        remove_free(NEXT_BLKP(bp)); // Remove the next block from the free list
        size += GET_SIZE(NEXT_BLKP(bp)); // Add sizes of the current and the next blocks
        set_size(bp, size, 0);
        insert_free(bp);
        //PUT(HDRP(bp), PACK(size, 0)); // Set the allocated bit to unallocated in the header…
        //PUT(FTRP(bp), PACK(size, 0)); // … and footer of the new block
    }
    // Case 4: Both adjacent blocks are allocated
    else {
        insert_free(bp);
    }
    
    
    return bp;
}


/**
 * find_fit - Finds a free space to place the a block of the given size
 */
static void *find_fit(size_t size) {
    void *bp;
    int index = get_free_list_index(size);
    int i;
    for (i = index; i < N_FREE_LISTS; i++) {
        for (bp = free_lists_start[i]; bp != NULL; bp = NEXT_FREE_BLKP(bp)) { // Linear time of the free list
            if (size <= GET_SIZE(bp) && !(CHECK_REALLOCATION_LOCK(bp))) // If a free block of the size is available
                return bp;
        }
    }
    
    
    return NULL; // If no fit found
}

/**
 * place - Place block of asize bytes at start of free block bp and split if remainder would be at least minimum block size
 */
static void place(void *bp, size_t asize) {
    size_t csize = GET_SIZE(bp); // Get the size of the free block
    
    // If bp is free, remove it
    if (GET_ALLOC(bp) == 0)
        remove_free(bp);
    
    if ((csize - asize) >= MINSIZE) { // If the free block is way too long, split it in another free block
        PUT(HDRP(bp), PACK(asize, 1)); // Allocate the free block writing its header…
        PUT(FTRP(bp), PACK(asize, 1)); // … and footer
        
        // Pointer of the new smaller free block created by the partition of the original big free block
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0)); // Set the header of the new free block…
        PUT(FTRP(bp), PACK(csize - asize, 0)); // … and its footer
        // Merge the new smaller free block with its potential adjacent free blocks and add it to the free list
        coalesce(bp);
    } else { // If the remaining space is just enough for the block to allocate
        PUT(HDRP(bp), PACK(csize, 1)); // Allocate the free block writing its header…
        PUT(FTRP(bp), PACK(csize, 1)); // … and footer
    }
}

/**
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words) {
    char *bp;
    size_t size;
    
    size = MAX((words % 2) ? (words + 1) * WSIZE : words * WSIZE,
               MINSIZE); // TODO: Allocate even number of words to maintain alignment
    
    if ((bp = mem_sbrk(size)) == NULL) // If the heap could not be extended
        return NULL;
    
    PUT(HDRP(bp), PACK(size, 0)); // Set the new heap space as a free block…
    PUT(FTRP(bp), PACK(size, 0)); // … and its footer
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); // Set the new epilogue header
    
    
    //insert_free(bp);
    
    //print_heap();
    
    return coalesce(bp); // Merge the free block with its potential previous free block and add it to the free list
}



/////////////////////////////////////// MAIN ROUTINES ///////////////////////////////////////

/**
 * mm_init - initialize the malloc package.
 */
int mm_init(void) {
    
    char *first_block_ptr;
    
    if ((heap_list_start = mem_sbrk(MINSIZE + 8)) == NULL)
        return -1;
    
    PUT(heap_list_start, 0);                            // Alignment padding
    PUT(heap_list_start + WSIZE, PACK(MINSIZE, 1));     // Prologue header
    PUT(heap_list_start + 2 * WSIZE, 0);                // Previous pointer
    PUT(heap_list_start + 3 * WSIZE, 0);                // Next pointer
    
    first_block_ptr = heap_list_start + 2 * WSIZE;      // Alignment padding + header
    PUT(HDRP(first_block_ptr), PACK(MINSIZE, 1));
    PUT(FTRP(first_block_ptr), PACK(MINSIZE, 1));
    
    PUT(heap_list_start + MINSIZE + WSIZE, PACK(0, 1)); // Epilogue header
    
    int i;
    for (i = 0; i < N_FREE_LISTS; i++) {
        free_lists_start[i] = NULL;
    }
    
    //print_heap();
    
    // Extend the empty heap with a free block of CHUNKSIZE bytes
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
        return -1;
    
    return 0;
}

/**
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
    size_t asize;      // Adjusted block size
    size_t extendsize; // Amount to extend heap if no fit
    size_t spare_size;
    char *bp;
    
    if (size <= 0)
        return NULL;
    
    asize = MAX(MINSIZE, ALIGN(size) + 2 * WSIZE); // The adjusted size should be at least MINSIZE
    extendsize = MAX(asize, CHUNKSIZE); // The extend size should be at least CHUNKSIZE
    
    if ((bp = find_fit(asize)) != NULL) { // Look for a free place in the heap
        spare_size = GET_SIZE(bp) - asize;
        if (spare_size> SPARE_SIZE){
            remove_free(bp);
            // Leave some space before in case of small realloc
            PUT(HDRP(bp), PACK(spare_size, 0)); // Allocate the free block writing its header…
            PUT(FTRP(bp), PACK(spare_size, 0)); // … and footer
            insert_free(bp);
            bp = NEXT_BLKP(bp);
            PUT(HDRP(bp), PACK(asize, 0)); // Allocate the free block writing its header…
            PUT(FTRP(bp), PACK(asize, 0)); // … and footer
            insert_free(bp);
        }
        place(bp, asize);
        //printf("Allocating %lu at %p\n", size, bp);
        return bp;
    }
    
    if ((bp = extend_heap(extendsize / WSIZE)) != NULL) { // If no place found, try to extend the heap…
        place(bp, asize);
        //printf("Allocating %lu at %p\n", size, bp);
        return bp;
    }
    
    return NULL; // If the heap could not be extended
}

/**
 * mm_free - Free a block (same as implicit version from reference book)
 */
void mm_free(void *bp) {
    //printf("Freeing %p\n", bp);
    if (bp == NULL)
        return;
    
    RESET_REALLOCATION_LOCK(NEXT_BLKP(bp));
    size_t size = GET_SIZE(bp); // Get block size
    PUT(HDRP(bp), PACK(size, 0)); // Set the unallocated bit to the header…
    PUT(FTRP(bp), PACK(size, 0)); // … and footer
    coalesce(bp); // Coalesce and place the block into the free list
}

/**
 * mm_realloc - Reallocate a block with a new size
 */
void *mm_realloc(void *ptr, size_t size) {
    size_t oldsize;         // Old size of the block
    size_t asize;           // Adjusted size respecting the ALIGNMENT
    size_t difference_size; // Difference between both
    void *newptr;           // Pointer to the new block
    
    if (size <= 0) { // If the size is less than 0…
        mm_free(ptr); // … free the block
        return 0;
    }
    
    if (ptr == NULL) // If the old pointer is null…
        return mm_malloc(size); // … then just allocate a new block
    
    asize = MAX(ALIGN(size) + 2 * WSIZE, MINSIZE);
    oldsize = GET_SIZE(ptr);
    difference_size = asize - oldsize;
    
    // Case 1: If the old block has exactly the right size of the requested one…
    if (asize == oldsize) {
        newptr = ptr; // … then we are done
    }
    
    // Case 2: If the size of the old block is big enough
    else if (asize < oldsize) {
        /*
         if (oldsize - asize > MINSIZE) { // If the old block has not already the optimal size compared to the requested one
         // If a smaller new block can be created
         PUT(HDRP(ptr), PACK(asize, 1)); // Update the size of the reallocated block in its header…
         PUT(FTRP(ptr), PACK(asize, 1)); // … and in its footer
         PUT(HDRP(NEXT_BLKP(ptr)), PACK(oldsize - asize, 1)); // Update the size the next block in its header…
         mm_free(NEXT_BLKP(ptr)); // … and free it
         }*/
        newptr = ptr;
    }
    
    // Case 3: If the size of the old block is to small, allocate a new block: we have asize > oldsize
    else {
        asize += 24; // TODO find great param
        
        // Check if the next block is the end of the heap zone
        if (GET_SIZE(NEXT_BLKP(ptr)) == 0){
            extend_heap(difference_size);
        }
        
        // First try to see if the block can be extended in place
        if (GET_ALLOC(NEXT_BLKP(ptr)) == 0 && GET_SIZE(NEXT_BLKP(ptr)) + oldsize >= asize) {
            //remove_free(NEXT_BLKP(ptr));
            place(NEXT_BLKP(ptr), asize - oldsize);
            set_size(ptr, GET_SIZE(NEXT_BLKP(ptr)) + oldsize, 1);
            newptr = ptr;
        } else {
            if ((newptr = mm_malloc(size)) == NULL) // If the reallocation fails…
                return 0; // … the old block is not modified
            
            memcpy(newptr, ptr, oldsize); // Copy the old block data into the new one
            mm_free(ptr); // Free the old block
        }
        
        /*
         if (GET_SIZE(newptr) - asize < 64){
         SET_REALLOCATION_LOCK(NEXT_BLKP(newptr));
         }
         */
    }
    
    return newptr;
}


/////////////////////////////////////// CHECK ROUTINES ///////////////////////////////////////

/**
 * print_bytes - Print bytes at a specific pointer
 */
void print_bytes(void *ptr, int size) {
    unsigned char *p = ptr;
    int i;
    for (i = 0; i < size; i++) {
        if ((int) &(p[i]) % 8 == 0)
            printf("\n%05X: ", (int) (p + i) & ((1 << 20) - 1));
        //if (p + i + 1 == (unsigned char *) free_list_start)
        //    printf("%02hhX>", p[i]);
        //else
        printf("%02hhX ", p[i]);
    }
    printf("\n");
}


/**
 * printheap - Minimal information on the heap
 */
void print_heap() {
    printf("\nMemory heap: %zu bytes\n", mem_heapsize());
    print_bytes(heap_list_start, mem_heapsize());
}

/**
 * printblock - Minimal information on a block
 */
static void printblock(void *bp) {
    size_t hsize, halloc, fsize, falloc;
    
    checkheap(0);
    hsize = GET_SIZE(bp);
    halloc = GET_ALLOC(bp);
    fsize = GET_SIZE(bp);
    falloc = GET_ALLOC(bp);
    
    if (hsize == 0) {
        printf("%p: EOL\n", bp);
        return;
    }
    
    printf("%p: header: [%zu:%c] footer: [%zu:%c]\n", bp, hsize, (halloc ? 'a' : 'f'), fsize, (falloc ? 'a' : 'f'));
}

/**
 * checkblock - Minimal check of a block for consistency (from the implicit version of the reference book)
 */
static void checkblock(void *bp) {
    if ((size_t) bp % 8)
        printf("Error: %p is not doubleword aligned\n", bp);
    if (GET(HDRP(bp)) != GET(FTRP(bp)))
        printf("Error: header does not match footer\n");
}

/**
 * checkheap - Minimal check of the heap for consistency (from the implicit version of the reference book)
 */
void checkheap(int verbose) {
    char *bp = heap_list_start;
    
    if (verbose)
        printf("Heap (%p):\n", heap_list_start);
    
    if ((GET_SIZE(heap_list_start) != 2*WSIZE) || !UNPACK_ALLOC(HDRP(heap_list_start)))
        printf("Bad prologue header\n");
    checkblock(heap_list_start);
    
    for (bp = heap_list_start; GET_SIZE(bp) > 0; bp = NEXT_BLKP(bp)) {
        if (verbose)
            printblock(bp);
        checkblock(bp);
    }
    
    if (verbose)
        printblock(bp);
    if ((GET_SIZE(bp) != 0) || !(UNPACK_ALLOC(HDRP(bp))))
        printf("Bad epilogue header\n");
}
