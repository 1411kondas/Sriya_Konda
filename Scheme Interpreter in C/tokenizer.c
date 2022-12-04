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


bool isLetter(char possible){
  // if (possible == '\0') {
  //   return false;
  // }
  if(possible >='A' && possible <='Z' ){
    return true;
  }
  else if(possible >='a' && possible <='z'){
    return true;
  }
  return false;
}


char *getFullString (char *possible){
  char *full = talloc(sizeof(char) * 300);
  full[0] = *possible;
  char nextChar = (char)fgetc(stdin);
  int count = 1;

  while(nextChar != '\"'){
    full[count] = nextChar;
    nextChar = (char)fgetc(stdin);
    count++;
  }

  full[count] = nextChar;
  count++;
  full[count] = '\0';
  return full;
}


bool isDigit(char possible){
  if(possible != '\0'){
    if(possible <='9' && possible >='0'){
      return true;
    }
  }
  return false;
}


Value *getFullNumber (char possible, Value *number){
  char *full = talloc(sizeof(char) * 300);
  bool aDouble = false;
  int count = 0;
  
  while(possible != EOF && possible != ')' && possible != ' ' && possible != '\n'){
    if(possible == '.'){ 
      aDouble = true;
    }
    full[count] = possible;
    possible = (char)fgetc(stdin);
    count++;
  }
  full[count] = '\0';

  if(aDouble){
    number->type = DOUBLE_TYPE;
    number->d = strtod(full, NULL);
  }
  else{
    number->type = INT_TYPE;
    number->i = strtol(full, NULL, 10);
  }

  ungetc(possible, stdin);
  return number;
}


bool isSymbol(char possible){
  if(possible == '-'){
    possible = (char)fgetc(stdin);
    if(possible == ' ' || possible == ')'){
      ungetc(possible, stdin);
      return true;
    }
    else{
      ungetc(possible, stdin);
      return false;
    }
  }
  else if(isLetter(possible) || (possible >= '<' && possible <= '>') || (possible >= '$' && possible <= '/') || possible == '!' ){
  //this is the only way symbols are being correclty identified
    return true;
  }
  return false;
}


char *getFullSymbol (char *possible){
  char *outChar = talloc(sizeof(char) * 300);
  outChar[0] = *possible;
  char nextChar = (char)fgetc(stdin);
  int counter = 1;

  while(nextChar != ' ' && nextChar != ')' && nextChar !='\n'){
    outChar[counter] = nextChar;
    nextChar = (char)fgetc(stdin);
    counter++;
  }

  ungetc(nextChar, stdin);
  outChar[counter] = '\0';
  return outChar;
}


Value *tokenize(){

  char charRead; 
  Value *list = makeNull();
  charRead = (char)fgetc(stdin);
  char *charAddress = &charRead;
  char *thing = talloc(sizeof(char)*300);
  thing = &charRead;
  
  while (charRead != EOF) {

    bool aComment = false;
    bool aSpace = false;
    Value *newValue = talloc(sizeof(Value));
   
    if (charRead =='(' ) { //Set Open Type 
      newValue->type = OPEN_TYPE;
      newValue->s = talloc(sizeof(char)*2);
      newValue->s[0] = charRead;
      newValue->s[1] = '\0';
    } else if (charRead == ')') { //Set Close Type
      newValue->type = CLOSE_TYPE;
      newValue->s = talloc(sizeof(char)*2);
      newValue->s[0] = charRead;
      newValue->s[1] = '\0';
    } else if (isSymbol(charRead)){ //Set Symbol Type 
      newValue->type = SYMBOL_TYPE;
      newValue->s = getFullSymbol(charAddress);
    } else if (charRead == '#') { //Set Boolean Type 
      charRead = (char)fgetc(stdin);
      if(charRead == 't'){
        newValue->type = BOOL_TYPE;
        newValue->i = 1;
      }
      else if(charRead == 'f'){
        newValue->type = BOOL_TYPE;
        newValue->i = 0;
      }
      else{
        printf("Syntax Error: Unrecognized token:%c\n", charRead);
        aComment = true;
        texit(1); 
      }

    } else if (charRead == '\"') { //Set String Type
      newValue->type = STR_TYPE;
      newValue->s = getFullString(charAddress);
    } else if (isDigit(charRead) || charRead == '-'){ //Set Numbers
      newValue = getFullNumber(charRead, newValue); 
    } else if (charRead == ';') { //Check for Comments 
      aComment = true;
    } else if (charRead == ' ' || charRead == '\n'){ //Check for Spaces
      aSpace = true;
    }
    else { //Otherwise
      printf("Syntax Error: Unrecognized token:%c\n", charRead);
      aComment = true;
      texit(1); 
    }

    if(aComment){
      while(charRead != '\n'){
        charRead = (char)fgetc(stdin);
      }
    }
    else if(aSpace){
      charRead = (char)fgetc(stdin);
    }
    else{
      list = cons(newValue, list); 
      charRead = (char)fgetc(stdin);
    }
  }

  Value *revList = reverse(list);
  return revList;
}


void displayTokens(Value *list){
  while(!isNull(list)){
    switch (car(list)->type){
      case INT_TYPE:
        printf("%i", car(list)->i);
        printf(":integer\n");
        break;
      case DOUBLE_TYPE:
        printf("%f",car(list)->d);
        printf(":double\n");
        break;
      case PTR_TYPE:
        printf("%p", car(list)->p);
        printf(":pointer\n");
        break;
      case NULL_TYPE:
        printf("End!\n");
        printf(":NULL_TYPE\n");
        break;
      case STR_TYPE:
        printf("%s", car(list)->s);
        printf(":string\n");
        break;
      case SYMBOL_TYPE:
        printf("%s", car(list)->s);
        printf(":symbol\n");
        break;
      case OPEN_TYPE:
        printf("(:open\n");
        break;
      case CLOSE_TYPE:
        printf("):close\n");
        break;
      case BOOL_TYPE:
        if (car(list)->i == 1){
          printf("#t");
        }
        else{
          printf("#f");
        }
        printf(":boolean\n");
        break;
      case CONS_TYPE:
        displayTokens(car(list)->c.car);
        displayTokens(car(list)->c.cdr);
        break;
      default:
        printf("other");
        break;
    }
    list = cdr(list);
  } 
}
