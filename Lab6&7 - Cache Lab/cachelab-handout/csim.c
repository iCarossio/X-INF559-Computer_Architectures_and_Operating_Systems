/*
 ** Antoine Carossio antoine.carossio
 */

#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <string.h>  /* memset */
#include <math.h>    /* pow */
#include <stdbool.h> /* bool */

#include "cachelab.h"

#define BUFF_SIZE 100
#define ARCH_SIZE 63

/* Cache structure */
typedef unsigned long tag; // Shortcut for an unsigned long
typedef struct {
    int S;
    int E;
    int B;
    int s;
    int b;
    tag** tags;
} Cache;


void initCache(Cache* cache, int s, int b, int E); // Initialize the cache structure
void useCache(Cache* cache, FILE* trace_file); // Simulate the cache operations on the traces file
void freeCache(Cache* cache); // Free the cache structure from memory
unsigned long extractBits(int high, int low, unsigned long source); // Get the bits from the address between min and max

/* Globals set by command line args */
int verbosity = 0; /* print trace if set */

/* Variables storing the results of the modelisation */
int hit_count      = 0;
int miss_count     = 0;
int eviction_count = 0;

void printUsage(char* argv[]) {
    /* Print usage info */
    
    printf("Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n", argv[0]);
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.\n");
    printf("  -E <num>   Number of lines per set.\n");
    printf("  -b <num>   Number of block offset bits.\n");
    printf("  -t <file>  Trace file.\n");
    printf("\nExamples:\n");
    printf("  linux>  %s -s 4 -E 1 -b 4 -t traces/yi.trace\n", argv[0]);
    printf("  linux>  %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n", argv[0]);
    exit(0);
}


void initCache(Cache* cache, int s, int b, int E) {
    /* Initialize the cache structure */
    
    cache->S = pow(2, s);
    cache->E = E;
    cache->B = pow(2, b);
    cache->s = s;
    cache->b = b;
    
    cache->tags = malloc(cache->S * sizeof(tag*));
    for (int i = 0; i < cache->S; i++) {
        cache->tags[i] = malloc(cache->E * sizeof(tag));
        memset(cache->tags[i], -1, cache->E * sizeof(tag));
    }
}


void freeCache(Cache* cache) {
    /* Delete the cache structure */
    
    for (int i = 0; i < cache->S; i++) {
        free(cache->tags[i]);
        cache->tags[i] = NULL;
    }
    free(cache->tags);
    cache->tags = NULL;
}


unsigned long extractBits(int min, int max, unsigned long address) {
    /* Get the bits from the address between min and max */
    
    if (max > ARCH_SIZE || min > ARCH_SIZE || max < 0 || min < 0 || min > max) {
        printf("Error from extractBits(): bits cannont be extracted from this input\n");
    }
    return (address << (ARCH_SIZE - max)) >> (ARCH_SIZE - max + min);
}


void useCache(Cache* cache, FILE* trace_file) {
    /* Simulate cache behaviour with the traces file */
    
    char lineBuff[BUFF_SIZE];
    
    while(fgets(lineBuff, BUFF_SIZE, trace_file)) {
        
        // Pass Instruction Loads
        if (lineBuff[0] == 'I'){
            continue;
        }
        
        // Read the trace line and stores " access_type address,size"
        char access_type;
        unsigned long address = 0;
        int size = 0;
        sscanf(lineBuff, " %c %lx,%d", &access_type, &address, &size);
        
        // Extract set_bits and tag_bits from the address
        unsigned long set_bits = 0;
        unsigned long tag_bits = 0;
        tag_bits = extractBits(cache->s + cache->b, 63, address);
        set_bits = extractBits(cache->b, cache->s + cache->b - 1, address);
        if (verbosity) { printf("%c %lx,%d ", access_type, address, size); }
        
        // Try to find tags[set_bits][tag_bits]
        int i;
        bool hit = false;
        tag* set = cache->tags[set_bits];
        
        for(i = 0; i < cache->E; i++) {
            tag line_tag = set[i];
            if (line_tag == tag_bits) { // Tag found
                hit = true;
                break;
            }
            if (line_tag == -1) { // If set[i] is not valid
                break;
            }
        }
        
        // Handle the hit or missed cases
        if (hit) {
            hit_count++;
            if (verbosity) { printf("hit"); }
            
            tag new = set[i];
            tag old = set[0];
            tag tmp;
            for (int j = 1; j <= i; j++) {
                tmp    = old;
                old    = set[j];
                set[j] = tmp;
            }
            set[0] = new;
        } else {
            miss_count++;
            if(verbosity) { printf("miss"); }
            
            if (set[cache->E - 1] != -1) {
                eviction_count++;
                if(verbosity) { printf(" eviction"); }
            }
            
            tag old = set[0];
            tag tmp;
            for (int j = 1; j < cache->E; j++) {
                tmp    = old;
                old    = set[j];
                set[j] = tmp;
            }
            set[0] = tag_bits;
        }
        
        // If this is is a Data Modify
        if (access_type == 'M') {
            hit_count++;
            if (verbosity) { printf(" hit"); }
        }
        
        if(verbosity) { printf("\n"); }
        
        // If the end of file is reached, stop reading traces
        if(feof(trace_file)) {
            break;
        }
    }
}


int main(int argc, char* argv[]) {
    /* Main routine */
    
    char c;
    int s = 0;         /* set index bits */
    int b = 0;         /* block offset bits */
    int E = 0;         /* associativity */
    char* trace_path = NULL;
    
    while( (c=getopt(argc,argv,"s:E:b:t:vh")) != -1){
        switch(c){
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                trace_path = optarg;
                break;
            case 'v':
                verbosity = 1;
                break;
            case 'h':
                printUsage(argv);
                exit(0);
            default:
                printUsage(argv);
                exit(1);
        }
    }
    
    /* Make sure that all required command line args were specified */
    if (s == 0 || E == 0 || b == 0 || trace_path == NULL) {
        printf("%s: Missing required command line argument\n", argv[0]);
        printUsage(argv);
        exit(1);
    }
    
    Cache cache;
    initCache(&cache, s, b, E);
    
    FILE* trace_file = fopen(trace_path, "r");
    
    if (trace_file != NULL){
        useCache(&cache, trace_file);
    }
    
    fclose(trace_file);
    freeCache(&cache);
    
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
