#include "value.h"
#include "linkedlist.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>


// Replacement for malloc that stores the pointers allocated. It should store
// the pointers in some kind of list; a linked list would do fine, but insert
// here whatever code you'll need to do so; don't call functions in the
// pre-existing linkedlist.h. Otherwise you'll end up with circular
// dependencies, since you're going to modify the linked list to use talloc.

struct Node{
    Value *data; 
    struct Node *next; 
};

typedef struct Node Node;

Node *activeList = NULL; 

void makeIntoList(Node *newNode) {
    newNode -> next = activeList;
    activeList = newNode;
}

void *talloc(size_t size){
   Value *thePointer = malloc(sizeof(Value));
   thePointer -> type = PTR_TYPE; 
   thePointer -> p = malloc(size); 
   Node *newNode = malloc(sizeof(Node)); 
   newNode -> data = thePointer; 
   makeIntoList(newNode); 
   return thePointer -> p; 
}

// Free all pointers allocated by talloc, as well as whatever memory you
// allocated in lists to hold those pointers.
void tfree(){
    Node *current = activeList;
    while(current->next != NULL){
        Node *temp = current;
        current = current->next;
        free(temp->data->p); //uninitialized value bc the last node doesn't have a pointer
        free(temp->data);
        free(temp);
    }
    if(current != NULL){
        free(current->data->p);
        free(current->data);
        free(current);
    } 
    activeList = NULL; 
}

// Replacement for the C function "exit", that consists of two lines: it calls
// tfree before calling exit. It's useful to have later on; if an error happens,
// you can exit your program, and all memory is automatically cleaned up.
void texit(int status){
    tfree(); 
    exit(status); 
}
