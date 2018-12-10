#include <stdlib.h>
#include <stdio.h>
#include "defines.h"

//You should declare the structures in the header file
//this is a start of a linked list. You're free to ignore this and build your own
//or extend this
typedef struct Node Node;

struct Node {
    // a doubly linked list
    Node* next;
    Node* prev;
    // size of the memory block
    size_t s;
    // address of the start of the block
    byte_ptr start_pos;
    // status of the block
    int isUsed;

};


void* mm_best_fit_malloc (size_t size);
void* mm_first_fit_malloc (size_t size);
void* mm_malloc (size_t size);
void  mm_free (void* ptr);
void  mm_print_heap_status (FILE*);
void  mm_defragment();
void  add_node(Node* cur_node, Node* new_node, size_t size);
