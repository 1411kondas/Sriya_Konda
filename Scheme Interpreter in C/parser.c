#include "value.h"
#include "talloc.h"
#include "linkedlist.h"
#include "tokenizer.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include <string.h>
#include <ctype.h>


void printTree(Value *tree){
  while(tree->type == CONS_TYPE){
    switch(car(tree)->type){
      case INT_TYPE:
        printf("%i",car(tree)->i);
        break;
      case DOUBLE_TYPE:
        printf("%f",car(tree)->d);
        break;
      case OPEN_TYPE:
        printf("(");
        break;
      case CLOSE_TYPE:
        printf(")");
        break;
      case NULL_TYPE:
        printf("");
        break;
      case PTR_TYPE:
        printf("pointer");
        break;
      case STR_TYPE:
        printf("%s", car(tree)->s);
        break;
      case SYMBOL_TYPE:
        printf("%s", car(tree)->s);
        break;
      case CONS_TYPE:
        printf("(");
        printTree(car(tree));
        printf(")");
        break;
      case BOOL_TYPE:
        if (car(tree)->i == 1){
            printf("#t");
        } else{
            printf("#f");
        }
        break;
      default:
        printf("other");
        break;
      }
    printf(" ");
    tree = cdr(tree);
  }
}


// Takes a list of tokens from a Scheme program, and returns a pointer to a
// parse tree representing that program.
Value *parse(Value *tokens){
  Value *tree = makeNull();
  int count = 0;
  while(tokens->type == CONS_TYPE){
    Value *current = car(tokens);
    if(current->type == OPEN_TYPE){
      count++;
      tree = cons(current, tree);
    }
    else if(current->type != CLOSE_TYPE){
      tree = cons(current, tree);
    }
    else{
      count--;
      Value *returned = makeNull();
      while(car(tree)->type != OPEN_TYPE){
        returned = cons(car(tree), returned);
        tree = cdr(tree);
        if(tree->type != CONS_TYPE){
          printf("Syntax error");
          texit(1);
        }
      }
      tree = cons(returned, cdr(tree));
    }
    tokens = cdr(tokens);
  }
  if(count > 0){
    printf("Syntax error: not enough close parentheses\n");
    texit(1);
  }
  else if(count < 0){
    printf("Syntax error: too many close parentheses\n");
    texit(1);
  }
  return tree;
}

