#include "my_mem.h"
#include <stdlib.h>
#include <stdio.h>


/*
 * You CAN'T allocate a global static array in global memory, for example,
 * you CAN'T do node[50], you HAVE to use pointers, as many as you want. You may
 * need more than one linked list, I (your TA) use only one list but keep/maintain information about the nodes
 * in a specific way.
 *
 * Feel free to use a different data structure, single/doubly linked lists, trees, w/e, all up to you.
 *
 * Also, to make sure you do it correctly; all structures that you use for bookkeeping, you will use
 * the system's malloc, not yours. Only user's data will reside in the heap you are managing.
 */

//example: head of a list of nodes
Node* head;
size_t total_A_Mem;
//TODO: other pointers you may need to use here...


//This is your "heap". you will reserve/allocate and manage memory from this block.
//if you run out of memory or can't allocate any more, you should "throw" a
//segmentation fault (your turn to get back to those pesky segfaults that always
//bother you) and exit the program with an error (there's an example below)
//You won't need to extend/increase this heap.
//Note: In real OS, what happens when you do allocate more than what you have?
//      well, run "man sbrk" on your terminal, you'll learn how to use it in the OS class
byte_ptr heap;

//just a toggle flag to initialize only once
static char mm_inited = 0;

void my_mminit()
{
    heap = (byte_ptr) malloc (HEAP_SIZE);
    if (heap == 0) {
        printf("ERROR during mm init malloc\n");
        exit(1);
    }
    mm_inited = 1;

    //TODO: initialize your data structure(s) here
    Node* n = (Node*)malloc(sizeof(Node));
    head = n;
    head->next = NULL;
    head->prev = NULL;
    head->s = HEAP_SIZE;
    head->start_pos = heap;
    head->isUsed = 0;
    total_A_Mem = 0;

}

//you shouldn't need to change this, but feel free to do so if you want
//it's just a switch to choose allocation policy during compile time
//and an init that only runs once
void* mm_malloc(size_t size)
{
    if (!mm_inited)
        my_mminit();

    #ifdef BESTFIT
        return mm_best_fit_malloc(size);
    #elif FIRSTFIT
        return mm_first_fit_malloc(size);
    #else
        printf("memory system policy undefined\n");
        exit(1);
    #endif

   // printf("JIAYI'S DEBUG: %s %s\n",total_A_Mem, HEAP_SIZE);
}

/*
 *
 * This is where you will write your code.
 *
 */

void mm_free(void* ptr)
{
    //TODO: do your work here

    if(ptr < heap || ptr > heap+HEAP_SIZE) // the ptr is not in heap
    {
      printf("Segmentation fault.\n");
      exit(1);
    }
    Node* cur = head;
    while(cur != NULL)
    {
      if(cur->start_pos == ptr && cur->isUsed == 1)// find the block that is been pointed
      {
          total_A_Mem -= cur->s;// update
          //printf("Jiayi's DEBUG--------------------%lu %lu \n", total_A_Mem, HEAP_SIZE);
          cur->isUsed = 0;
          if((cur->prev != NULL) && (cur->prev)->isUsed == 0) // if the previous block is also free |f | f |
          {
            Node* temp = cur; // for free
            (cur->prev)->s += cur->s; // coalesce these two blocks
            (cur->prev)->next = cur->next;
            if(cur->next !=NULL){cur->next->prev = cur->prev;}
            cur = cur->prev;
            free(temp); // free the cur
          }
          if((cur->next != NULL) && (cur->next)->isUsed ==0) // the next block is also free
          {
            Node* temp = cur->next;// for free
            cur->s += (cur->next)->s; // coaleces these two blocks
            cur->next = (cur->next)->next;
            if(cur->next != NULL){ (cur->next)->prev = cur;}
            free(temp);// free the node I deleted
          }
          break;
        }else if(cur->start_pos > ptr || (cur->start_pos == ptr && cur->isUsed == 0))
        {  // the block is already free or ptr does not point to the start of the block
            printf("Segmentation fault.\n");
            exit(1);
        }
        cur = cur->next;
    }

}

void* mm_best_fit_malloc (size_t size)
{
    //TODO: .. some code ..
    total_A_Mem += size;//
    //printf("Jiayi's debug:----------%lu %lu \n", total_A_Mem, HEAP_SIZE);

    Node* cur = head;
    Node* best_node = NULL; // to record the best fit node
    size_t best_size = HEAP_SIZE+1;
    while(cur != NULL)
    {
      size_t cur_size = cur->s;
      if (cur->isUsed == 0 && cur_size >= size && cur_size < best_size)
      {
        if(cur_size == size) // find a block with the same size
        {
          cur->isUsed = 1;
          return cur->start_pos;
        }
        best_size = cur_size;
        best_node = cur;

      }
      cur = cur->next;
    }
    if(best_node != NULL) // find a block larger than the size
    {
      Node* new_node = malloc(sizeof(Node));
      add_node(best_node,new_node,size);
      return new_node->start_pos;

    }
    printf("Segmentation fault.\n");
    exit(1);



    //again, to make sure you do this correctly, if you need to allocate some node in a linked list or whatever
    //structure you use, use malloc, eg., Node* n = malloc(sizeof(Node))
    //...some code..

    //return a pointer to some address in the allocated 32MB heap, for example, the first time someone
    //calls mm_malloc, you will likely: "return heap+HEAP_SIZE-size", because there's only one free block in the heap (the
    //entire heap) and you're returning a pointer to the rightmost 'size' bytes of the heap that the user can then use
    //however it wants, the same way one can use malloc

    //your return value HAS TO BE a pointer inside the heap: [heap, heap+size)


    /*******************************
     ******  THE MALLOC BELOW IS JUST A PLACEHOLDER SO THAT main CAN RUN.
     ******  YOUR TASK IS TO RESERVE MEMORY FROM byte_ptr heap; AND ONLY USE
     ******  malloc FOR METADATA LIKE LISTS, ETC. YOU SHOULD DEFINITELY DELETE
     ******  THIS LINE WHEN YOU'RE DOING THIS LAB
    *******************************/
}

void* mm_first_fit_malloc (size_t size)
{
    /*
     *   TODO: Your code here
     */
     //iterating over the list from left to right
     total_A_Mem += size;//update
     Node* cur = head;
     while(cur != NULL)
     {
       if(cur->s >= size && cur->isUsed == 0)
       {
         if(cur->s == size){ // the block with the same size as reqired
           cur->isUsed = 1;
           return cur->start_pos;
         }else{ // the block with a larger size
           Node* new_node = malloc(sizeof(Node));
           add_node(cur, new_node,size);
           return new_node->start_pos;
         }
       }
       cur = cur->next;
     }



    /*******************************
     ******  THE MALLOC BELOW IS JUST A PLACEHOLDER SO THAT main CAN RUN.
     ******  YOUR TASK IS TO RESERVE MEMORY FROM byte_ptr heap; AND ONLY USE
     ******  malloc FOR METADATA LIKE LISTS, ETC. YOU SHOULD DEFINITELY DELETE
     ******  THIS LINE WHEN YOU'RE DOING THIS LAB
    *******************************/
    return NULL;
}

//this is the function that will be used to grade you, make sure to print in the
//correct format according to the pdf.
void mm_print_heap_status(FILE* fout)
{
    Node* cur = head;
    while(cur->next != NULL)
    {
      fprintf(fout, "%lu%s ", cur->s, cur->isUsed == 0? "F" : "A");
      cur = cur->next;
    }
    fprintf(fout, "%lu%s\n", cur->s, cur->isUsed == 0? "F" : "A");

    /*
     *   Your code here. Because you are writing a file or maybe stdout (your terminal), instead of using printf, use fprintf
     *   It has the exact same syntax, but the first parameter is fout. This function assumes the file already exists.
     *   Check test.c if you want to see how this works. You shouldn't worry about it, just use fprintf as the example below.
     *   eg: fprintf(fout, "some string %d  %s\n", parameter1, parameter2)
     */

}

void  mm_defragment()
{
    /*
     *   TODO: Your code here
     */


    /*
     * Push all occupied blocks to the right, and make one big free block on the left.
     */
    // create a new empty block as header
     size_t total_F_Mem = HEAP_SIZE - total_A_Mem;
     byte_ptr new_pos = heap+total_F_Mem;
     Node* new_head = malloc(sizeof (Node));
     // initialization
     new_head->next = head;
     new_head->prev = NULL;
     new_head->s = total_F_Mem;
     new_head->start_pos = heap;
     new_head->isUsed = 0;
     head->prev = new_head;

     Node * cur = head;
     Node * pre = new_head;
     // find all the allocated blocks
     // and add them behind the first large blocks (update the starting address)
     // delete all free node
     while(cur != NULL)
     {
       if(cur->isUsed == 1)
       {
         cur->start_pos =  new_pos;
         new_pos += cur->s;
         cur->prev = pre;
         pre = cur;
         cur = cur->next;
       }else{
         Node * temp = cur;
         (cur->prev)->next = cur->next;
         if(cur->next != NULL){(cur->next)->prev = cur->prev;}
         cur = cur->next;
         free(temp);
       }

     }
     head = new_head;

}


//Maybe creating linked list functionalities in functions is a good idea
//void add_node(Node* head, Node* new_node)
//if you do, declare those on the header file and put their code here.
 void add_node(Node* cur_node, Node* new_node, size_t size)
 {

   Node* next_node = cur_node->next;
   if (next_node != NULL){ next_node->prev = new_node;}
   new_node->next = next_node;
   new_node->prev = cur_node;
   cur_node->next = new_node;
   // add the new block at the rightmost of current block
   new_node->start_pos = (cur_node->start_pos)+(cur_node->s)-size;
   new_node->s = size;
   cur_node->s -= size;
   new_node->isUsed = 1;


 }
