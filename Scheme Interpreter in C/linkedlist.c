#include "value.h"
#include "talloc.h"
#include "linkedlist.h"
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>



// Create a new NULL_TYPE value node.
Value *makeNull() {
    Value *nullValue = talloc(sizeof(Value));
    nullValue->type = NULL_TYPE;
    return nullValue;
}

// Create a new CONS_TYPE value node.
Value *cons(Value *newCar, Value *newCdr) {
    Value* consValue = talloc(sizeof(Value));
    consValue->type = CONS_TYPE;
    consValue->c.car = newCar;
    consValue->c.cdr = newCdr;
    return consValue;
}
 


// Return a new list that is the reverse of the one that is passed in. All
// content within the list should be duplicated; there should be no shared
// memory whatsoever between the original list and the new one.
//
// FAQ: What if there are nested lists inside that list?
// ANS: There won't be for this assignment. There will be later, but that will
// be after we've got an easier way of managing memory.
Value *reverse(Value *list) {
    Value* newList; 
    newList = talloc(sizeof(Value)); //does it need to be the size of list in case Value was expanded?
    newList->type = NULL_TYPE;

    while(!isNull(list)){
        // Value *newVal = talloc(sizeof(Value));
        // newVal -> type = car(list)->type; 
        // switch(newVal -> type){
        //     case INT_TYPE : 
        //         newVal -> i = car(list) -> i; 
        //         break; 
        //     case DOUBLE_TYPE : 
        //         newVal -> d = car(list) -> d; 
        //         break;
        //     case STR_TYPE : 
        //         newVal -> s = car(list) -> s; 
        //         break;
        //     case PTR_TYPE :
        //         newVal -> p = car(list) -> p; 
        //         break; 
        //     case CONS_TYPE : 
        //         newVal -> c.car = car(list) -> c.car; 
        //         newVal -> c.cdr = car(list) -> c.cdr;
        //         break;
        //     case NULL_TYPE : 
        //         break;
        // }
        newList = cons(car(list), newList); 
        // if(car(list)->type == CONS_TYPE){
        //     newList->c.car = reverse(car(newList));
        // }
        list = cdr(list); 
    }
    return newList;  
}


// Utility to check if pointing to a NULL_TYPE value. Use assertions to make sure
// that this is a legitimate operation.
bool isNull(Value *value){
    assert(value != NULL && "Error (length): input list is NULL"); 
    //return true; //assert should abort if false so, we only need to return true 
    if(value->type == NULL_TYPE){
       return true; 
    } 
    else{
        return false; 
    }
}


// Measure length of list. Use assertions to make sure that this is a legitimate
// operation.
int length(Value *value){
    int counter = 0; 
    while(!(isNull(value))){ 
        value = cdr(value); 
        counter ++;
    }
    return counter; 
}

// Utility to make it less typing to get car value. Use assertions to make sure
// that this is a legitimate operation.
Value *car(Value *list){
    assert(list->type == CONS_TYPE && "Error: list is not CONS_TYPE\n");
    assert(list != NULL && "Error: list is NULL\n");
    assert(list->c.car != NULL && "Error: car is Null\n");
    //assert(list -> c.cdr != NULL && "Error: cdr is Null\n"); 
    return list->c.car;
}

// Utility to make it less typing to get cdr value. Use assertions to make sure
// that this is a legitimate operation.
Value *cdr(Value *list){
    assert(list->type == CONS_TYPE && "Error: list is not CONS_TYPE\n");
    assert(list != NULL && "Error: list is NULL\n");
    assert(list->c.cdr != NULL && "Error: cdr is Null\n");
    assert(list->c.car != NULL && "Error: car is Null\n");
    return list->c.cdr;
}
