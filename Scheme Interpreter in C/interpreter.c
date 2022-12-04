#include <stdio.h>
#include "tokenizer.h"
#include "value.h"
#include "linkedlist.h"
#include "parser.h"
#include "talloc.h"
#include <string.h>
#include "interpreter.h"



void evaluationError(){
  printf("Evaluation error.\n");
  texit(1);
}


// Value *lookUpSymbolHelper(Value *tree, Frame *frame){
//   Value *check = frame->bindings; //create a VALUE struct and sets it equal to the value of the frame binding VALUE struct
//   while(check->type == CONS_TYPE && car(check)->type != NULL_TYPE){
//     if(car(check)->type == CONS_TYPE){
//       if(!strcmp(car(car(check))->s, tree->s)){
//         //compares the string in the cons cell of the very first cons cell to the string you are trying to look for 
//         // the string you are trying to look for is in tree 
//         if(cdr(car(check))->type != NULL_TYPE){
//           return cdr(car(check));
//         }
//         else{
//           return NULL; //else nothing 
//         }
//       }
//     }
//     check = cdr(check); //iterates, moves onto the next one 
//   }
//   return NULL; //all else nothing 
// }


// Value *lookUpSymbolHelper(Value *tree, Frame *frame){
//   Value *check = frame->bindings; //create a VALUE struct and sets it equal to the value of the frame binding VALUE struct
//   while(check->type == CONS_TYPE && car(check)->type != NULL_TYPE){
//     if(car(check)->type == CONS_TYPE && !strcmp(car(car(check))->s, tree->s)){
//       return cdr(car(check)); 
//     }
//     check = cdr(check); //iterates, moves onto the next one 
//   }
//   return NULL; //all else nothing 
// }


Value *lookUpSymbolHelper(Value *tree, Frame *frame){
  Value *check = frame->bindings;
  while(check->type == CONS_TYPE && car(check)->type != NULL_TYPE){
    if(car(check)->type == CONS_TYPE && !strcmp(car(car(check))->s, tree->s)){
      return cdr(car(check));
    }
    check = cdr(check);
  }
  return NULL;
}


Value *lookUpSymbol(Value *tree, Frame *frame){
Value *looked = NULL; //new variables set to NULL 
  while(frame != NULL && looked == NULL){
    looked = lookUpSymbolHelper(tree, frame);
    frame = frame->parent;
  }
  if(looked == NULL){
    evaluationError();
  }
  return looked;
}


Value *evalIf(Value *args, Frame *frame){
  if(length(args) != 3){
    evaluationError();
  }
  Value *check =  eval(car(args), frame);
  if(check ->type == BOOL_TYPE && check ->i == 1){
    return eval(car(cdr(args)), frame);
  }
  else if (check ->type == BOOL_TYPE){
    return eval(car(cdr(cdr(args))), frame);
  }
  evaluationError();
  return args;
}


Value *evalLet(Value *args, Frame *frame){  
  if(args->type != CONS_TYPE){
    evaluationError();
  }
  Value *next = cdr(args);
  if(next->type == NULL_TYPE){
    evaluationError();
  }
  args = car(args);
  if(args->type != CONS_TYPE && args->type != NULL_TYPE){
    evaluationError();
  }
   //printf("going into while loop\n"); 
  while(args->type != NULL_TYPE){
    Value *carArgs = car(args);
    Value *newValue;
    if(carArgs->type != CONS_TYPE){
      //printf("let - is cons type\n"); 
      evaluationError();
    }
    if(length(carArgs) != 2){
       //printf("let - is 2\n"); 
      evaluationError();
    }
    if(car(carArgs)->type != SYMBOL_TYPE){
       //printf("let - is symbol type\n"); 
      evaluationError();
    }
    if(lookUpSymbolHelper(car(carArgs), frame) != NULL){
       //printf("let - is wrong \n"); 
      evaluationError();
    }
    newValue = cons(car(carArgs), eval(car(cdr(carArgs)), frame->parent));
    frame->bindings = cons(newValue, frame->bindings);
    args = cdr(args);
  }
  Value *output;
  while(next->type != NULL_TYPE){
    output = eval(car(next), frame);
    next = cdr(next);
  }
  return output;
}


Value *evalLetStar(Value *args, Frame *frame){
  //printf("starting let star\n "); 
  if(args->type != CONS_TYPE){
        //printf("let stat - not cons type args\n "); 
        evaluationError();
  }
  //printf("let - star- make next value \n "); 
  Value *next = cdr(args);
  // printf("let - star- made next value\n "); 
  // printf("let - star - going intp if\n "); 
  if(next->type == NULL_TYPE){
      //printf(" let - star - null type next\n "); 
      evaluationError();
  }
  //printf("let - star- after next type if\n "); 
  args = car(args);
  //printf("let - star- args is car args \n "); 
  if(args->type != CONS_TYPE && args->type != NULL_TYPE){
      //printf("let - star - not not cons type or null type args"); 
      evaluationError();
  }
  //printf("let passed initial checkings \n"); 
    while(args->type != NULL_TYPE){
      Value *carArgs = car(args);
      //printf("made car\n"); 
      Value *newValue;
      if(carArgs->type != CONS_TYPE){
        //printf("pass1\n"); 
        evaluationError();
      }
      if(length(carArgs) != 2){
        //printf("pass2\n");
        evaluationError();
      }
      if(car(carArgs)->type != SYMBOL_TYPE){
        //printf("pass3\n");
        evaluationError();
      }
      // if(lookUpSymbolHelper(car(carArgs), frame) != NULL){
      //   printf("pass4\n");
      //   evaluationError();
      // }
      // if(lookUpSymbol(car(carArgs), frame) != NULL){
      //   printf("pass5\n");
      //   evaluationError();
      // }
        // if(lookUpSymbol(car(carArgs), frame) == NULL){
      //   printf("pass99\n");
      //   evaluationError();
      // }
      if(lookUpSymbolHelper(car(carArgs), frame) != NULL && lookUpSymbol(car(carArgs), frame) == NULL){
        //printf("pass6\n");
        evaluationError();
      }
      //printf("let us start \n"); 
      Frame *env_prime = talloc(sizeof(Frame)); 
      //newValue = cons(car(carArgs), eval(cdr(carArgs), env_prime));
      //newValue = cons(car(carArgs), eval(car(cdr(carArgs)), env_prime));
      newValue = cons(car(carArgs), eval(car(cdr(carArgs)), frame));
      //env_prime->bindings = cons(newValue, env_prime->bindings);
      env_prime->bindings = cons(newValue, makeNull());
      env_prime -> parent = frame;  
      frame = env_prime; 
      args = cdr(args); 
    }
    Value *output;
    //printf("out of while \n"); 
    while(next->type != NULL_TYPE){
      output = eval(car(next), frame);
      next = cdr(next);
    }
  return output;
}


Value *evalLetrec(Value *args, Frame *frame){  
    //printf("in eval let rec "); 

    //printf("new frame made\n "); 

    //printf("startinc checking\n "); 
    if(args->type != CONS_TYPE){
        //printf("not cons type args\n "); 
        evaluationError();
    }
    //printf("make next value \n "); 
    Value *next = cdr(args); 
    //printf("going into if\n "); 
    if(next->type == NULL_TYPE){
        //printf(" null type next\n "); 
        evaluationError();
    }
    //printf("after next type if\n "); 
    args = car(args);
    //printf("args is car args \n "); 
    if(args->type != CONS_TYPE && args->type != NULL_TYPE){
        //printf("not not cons type or null type args"); 
        evaluationError();
    }
    //printf("finished checkings\n "); 
    Frame *newFrame = talloc(sizeof(Frame)); 
    newFrame -> parent = frame; 
    newFrame -> bindings = makeNull(); 

    //printf("ist while \n"); 
    //while(args -> type == CONS_TYPE){
    while(args -> type != NULL_TYPE){
        Value *carArgs = car(args); 
        //Value *newValue; 
        // if(carArgs->type != CONS_TYPE){
        //     evaluationError();
        // }
        // if(length(carArgs) != 2){
        //     printf("here4");
        //     evaluationError();
        // }
        // if(car(carArgs)->type != SYMBOL_TYPE){
        //     printf("here5");
        //     evaluationError();
        // }
        // if(lookUpSymbolHelper(car(carArgs), frame) != NULL){
        //     evaluationError();
        // }
        Value *newValue = cons(car(carArgs), car(cdr(carArgs)));
        newFrame->bindings = cons(newValue, newFrame->bindings);
        args = cdr(args);
    }

    Frame *env_prime = talloc(sizeof(Frame)); 
    env_prime -> parent = frame; 
    env_prime -> bindings = makeNull(); 
    //args = env_prime -> bindings; 
    args = newFrame -> bindings; 

    //printf("2nd while \n"); 
    //while(args -> type == CONS_TYPE){
    while(args -> type != NULL_TYPE){
        Value *carArgs = car(args); 
       // Value *newValue; 
        // if(carArgs->type != CONS_TYPE){
        //     evaluationError();
        // }
        // if(length(carArgs) != 2){
        //     printf("here4");
        //     evaluationError();
        // }
        // if(car(carArgs)->type != SYMBOL_TYPE){
        //     printf("here5");
        //     evaluationError();
        // }
        // if(lookUpSymbolHelper(car(carArgs), frame) != NULL){
        //     evaluationError();
        // }
        Value *tempValue = eval(cdr(carArgs), env_prime); 
        //Value *newValue = cons(car(carArgs), eval(cdr(carArgs), env_prime));
        Value *newValue = cons(car(carArgs), tempValue);
        env_prime->bindings = cons(newValue, env_prime->bindings);
        args = cdr(args);
    }
    //printf("output setting  \n"); 
    Value *output = eval(car(next), env_prime);
    //next = cdr(next);
    return output;
}


// Value *evalQuote(Value *args, Frame *frame){
//   Value *output = makeNull();
//   if(length(args) == 0){
//     evaluationError();
//   }
//    //args = car(args); //assign first argument of args to args
//   if(car(args)->type == CONS_TYPE){
//     args = car(args);
//     if(cdr(args)->type != CONS_TYPE && cdr(args)->type != NULL_TYPE){
//       evaluationError();
//     }
//   } else{
//     //printf("Passed second args valid if\n");
//     if(length(args) != 1){
//       //printf("before : Is not length one|\n");
//       evaluationError(); // to check that there is only one input? 
//     }
//     output = car(args);
//     if(output->type == NULL_TYPE){
//       output = cons(output, makeNull());
//        //return output; why doesnt this work? 
//         //why is () the weird case :(
//       return cons(output, makeNull());
//     }
//     return output; //might change later
//   }
//   args = reverse(args);
//   while(args->type != NULL_TYPE){
//     output = cons(car(args), output);
//     args = cdr(args);
//   }
//   output = cons(output, makeNull());
//   return output;
// }


Value *evalQuote(Value *args){
  if(length(args) == 0){
    evaluationError();
  }
  args = car(args);
  return args;
}


// Value *evalSetBang(Value *args, Frame *frame){
//    //Value *output = makeNull(); 
//   if(length(args) < 2){ //make sure args has only one or 0 things in it 
//     //printf("define length and about to return error"); 
//     evaluationError();
//   }
//   //printf("length not greater than 2 \n ");
//   // while(frame->parent != NULL){  // make sure that frame has a parent/ isn't the very first item 
//   //   frame = frame->parent;  //go to its parents 
//   // }
//   if(car(args)->type != SYMBOL_TYPE){ //make sure that the value in args is a symbol 
//     //printf("going into define and about to return error"); 
//     evaluationError();
//   }
//   //printf("passed eval error \n");
//   Value *evaluator = eval(car(cdr(args)), frame); 
//   //printf("making evaluator\n ");
//   Value *newTempValue = cons(car(args), evaluator); 
//   //printf("making new temp value \n ");
//   //"adds" together the first value of args to the rest of the evaluted values in args and to the frame 
//   frame->bindings = cons(newTempValue, frame->bindings); //sets what was evaluated above to the frame bindings 
//     //return output; //just needs to return something 
//   //printf("setting frame bindings\n ");
//   return makeNull();
// }


Value *evalSetBang(Value *args, Frame *frame){
  if (length(args) == 2){
    Frame *frameCopy = frame; 
    while(frameCopy -> parent != NULL){
      frameCopy = frameCopy -> parent; 
    }
    Value *carArgs = car(args); 
    Value *secondArgs = car(cdr(args)); 
    Value *combind = cons(carArgs, eval(secondArgs, frame)); 
    Value *aBinding = makeNull(); 
    if(carArgs -> type == SYMBOL_TYPE){
      Value *copyBinding = frameCopy -> bindings; 
      while(copyBinding -> type != NULL_TYPE){
        Value * carBindings = car(car(copyBinding)); 
        frame -> bindings = cons(combind, frame -> bindings); 
        aBinding = cons(combind, aBinding); 
        copyBinding = cdr(copyBinding); 
      }
      frameCopy -> bindings = cons(aBinding, frameCopy -> bindings); 
      Value *returnSet = talloc(sizeof(Value)); 
      returnSet -> type = VOID_TYPE; 
      return returnSet;  
    }
  }
  evaluationError(); 
  return NULL; 
}


Value *evalBegin(Value * args, Frame *frame){
  Value *expression = talloc(sizeof(Value)); 
  Value *argscopy = args; 
  if (argscopy -> type  == NULL_TYPE){
    return makeNull();
  }
  while(argscopy -> type != NULL_TYPE){
    expression = eval(car(argscopy),frame); 
    argscopy = cdr(argscopy); 
  }
  return expression; 
}


Value *evalAnd(Value *args , Frame *frame){
    Value *returnAnd = talloc(sizeof(Value));
    returnAnd->type = BOOL_TYPE;
    //Value * cdrArgs = cdr(args);
    //if(car(args) -> type != NULL_TYPE && car(cdrArgs) -> type != NULL_TYPE){
    //while(car(args) -> type != NULL_TYPE && car(cdrArgs) -> type != NULL_TYPE){
    Value *argsCopy = args; // so it doesn't change ???? and prevents memory leaks 
    while(cdr(argsCopy) -> type != NULL_TYPE ){
      //Value * evaled = eval(car(cdr(args)), frame); 
      Value * evaled = eval(car(argsCopy), frame);
      if (evaled -> type == BOOL_TYPE && evaled -> i == 0 ){
        //returnAnd -> i = 0; 
        returnAnd -> s = "#f"; 
        return returnAnd; 
      }
      argsCopy = cdr(argsCopy); 
    }
    //returnAnd -> i = eval(car(cdrArgs), frame);
    //return returnAnd;
    return eval(car(argsCopy), frame);
}


Value *evalOr(Value *args , Frame *frame){
    Value *returnOr = talloc(sizeof(Value));
    returnOr->type = BOOL_TYPE;
    //Value * cdrArgs = cdr(args);
    //if(car(args) -> type != NULL_TYPE && car(cdrArgs) -> type != NULL_TYPE){
    //while(car(args) -> type != NULL_TYPE && car(cdrArgs) -> type != NULL_TYPE){
    Value *argsCopy = args;
    //printf("arsgopy made\n"); 
    while(cdr(argsCopy) -> type != NULL_TYPE ){
      //Value * evaled = eval(car(cdr(args)), frame); 
      Value * evaled = eval(car(argsCopy), frame);
      if (evaled -> type == BOOL_TYPE && evaled -> i == 1 ){
        //returnAnd -> i = 0; 
        //returnOr -> s = "#f"; 
        //return returnOr; 
        return evaled; 
      }
      //printf("if done \n"); 
      argsCopy = cdr(argsCopy); 
    }
    //printf("out of while\n"); 
    //returnAnd -> i = eval(car(cdrArgs), frame);
    //return returnAnd;
    return eval(car(argsCopy), frame);
}


//Value *evalNull(Value *args, Frame *frame){
Value *evalNull(Value *args){
    Value *returnValue = talloc(sizeof(Value)); 
    returnValue -> type = BOOL_TYPE; 
    if(length(args) != 1){
        //null can only have thing, so chekc that size is 1 
        evaluationError();
    }
    while(args -> type == CONS_TYPE){
        args = car(args); 
        //makes sure that it is of cons cell type and goes onto the next value in args 
    }
    if(args == NULL || args -> type == NULL_TYPE){
        returnValue -> i = 1;  //set to true 
    }
    else{
        returnValue -> i = 0; //set to false 
    }
    return returnValue; 
}


Value *evalPlus(Value *args){
  Value *returnSum = talloc(sizeof(Value));
  bool isInteger = true;
  int sum = 0;
  float floatSum;
  //printf("going into plus while\n"); 
  while(args->type == CONS_TYPE){
    Value *carArgs = car(args);
    while(carArgs->type == CONS_TYPE){
      carArgs = car(carArgs);
    }
    //if((carArgs -> type != INT_TYPE ) && (carArgs -> type != DOUBLE_TYPE )){
        //     evaluationError();
        // }
        // else if (isInteger == true){
        //     sum = sum + carArgs -> i; 
        // }
        // else if((carArgs -> type  == DOUBLE_TYPE) && (isInteger == true)){
        //     isInteger = false; 
        //     floatSum = (float) sum ; 
        // } 
        // else{
        //     floatSum = floatSum + carArgs -> d; 
        // }
    if(isInteger && carArgs->type == DOUBLE_TYPE){
      isInteger = false;
      floatSum = (float)sum;
    }
    else if(carArgs->type != INT_TYPE && carArgs->type != DOUBLE_TYPE){
      evaluationError();
    }
    if (isInteger){
      sum += carArgs->i;
    }
    else{
      floatSum += carArgs->d;
    }
    args = cdr(args);
  }
   //printf("out of plus while\n"); 

  if(isInteger){
    returnSum->type = INT_TYPE;
    returnSum->i = sum;
  }
  else{
    returnSum->type = DOUBLE_TYPE;
    returnSum->d = floatSum;
  }
   //printf("return sum setting\n"); 
  return returnSum;
}


//same thing as evalPlus but subtract 
Value *evalMinus(Value *args){
  Value *returnDiff = talloc(sizeof(Value));
  bool isInteger = true;
  bool beginner = true; 
  int difference;
  float floatDiff;
  while(args->type == CONS_TYPE){
    Value *carArgs = car(args);
    while(carArgs->type == CONS_TYPE){
      carArgs = car(carArgs);
        //printf("is carArgs"); 
    }
    if(beginner){
        if(carArgs->type == INT_TYPE){
            difference = carArgs->i;
            //printf("difference: %i", difference); 
        }
        else if(carArgs->type == DOUBLE_TYPE){
            isInteger = false;
            floatDiff = carArgs->d;
        }
        beginner = false;
    }
    //if((carArgs -> type != INT_TYPE ) && (carArgs -> type != DOUBLE_TYPE )){
        //     evaluationError();
        // }
        // else if (isInteger == true){
        //     sum = sum + carArgs -> i; 
        // }
        // else if((carArgs -> type  == DOUBLE_TYPE) && (isInteger == true)){
        //     isInteger = false; 
        //     floatSum = (float) sum ; 
        // } 
        // else{
        //     floatSum = floatSum + carArgs -> d; 
        // }
    else {
    if(isInteger && carArgs->type == DOUBLE_TYPE){
      isInteger = false;
      floatDiff = (float)difference;
    }
    else if(carArgs->type != INT_TYPE && carArgs->type != DOUBLE_TYPE){
      evaluationError();
    }
    if (isInteger){
      difference -= carArgs->i;
      //printf("carargs is int : %i", carArgs->i); 
      //printf("difference is int : %i", difference); 
    }
    else{
      floatDiff -= carArgs->d;
      //printf("carargs is not int : %i", carArgs->i); 
     //printf("difference is not int : %i", difference); 
    } 
    }
    args = cdr(args);
  }
  if(isInteger){
    returnDiff->type = INT_TYPE;
    returnDiff->i = difference;
  }
  else{
    returnDiff->type = DOUBLE_TYPE;
    returnDiff->d = floatDiff;
  }
  return returnDiff;
}


//Value *evalEqual(Value *args){
//     Value *returnValue = talloc(sizeof(Value)); 
//     returnValue -> type = BOOL_TYPE; 
//     bool isInteger = true;
//     bool returnbool = false; 
//     while(args->type == CONS_TYPE){
//         Value *carArgs = car(args);
//         Value *cdrArgs = cdr(args);
//         while(carArgs->type == CONS_TYPE){
//             carArgs = car(carArgs);
//         }
//         while(cdrArgs->type == CONS_TYPE){
//             cdrArgs = car(cdrArgs); 
//         }
//         if(isInteger && (carArgs->type == DOUBLE_TYPE || cdrArgs->type == DOUBLE_TYPE)){
//             isInteger = false;
//             //floatSum = (float)sum;
//         }
//         else if(carArgs->type != INT_TYPE && carArgs->type != DOUBLE_TYPE){
//             evaluationError();
//         }
//         else if(cdrArgs->type != INT_TYPE && cdrArgs->type != DOUBLE_TYPE){
//             evaluationError();
//         }
//         if (isInteger){
//             if(((carArgs->i / cdrArgs->i) == 1 ) || ((carArgs->i / cdrArgs->i) == 1.0) ){
//                 returnbool = true; 
//             }
//         }
//         else{
//             if(((carArgs->i / cdrArgs->i) == 1 ) || ((carArgs->i / cdrArgs->i) == 1.0) ){
//                 returnbool = true; 
//             }
//         }
//         args = cdr(args); 
//     }
//     returnValue -> s = returnbool;
//     return returnValue; 
// }


Value *evalEqual(Value *args){
    Value *returnValue = talloc(sizeof(Value));
    returnValue->type = BOOL_TYPE;
    //  printf("going into equal if  1\n"); 
    // if(car(args) -> type != INT_TYPE ||  car(cdr(args)) -> type != INT_TYPE){
    //   evaluationError();
    // }
    //printf("going into equal if  2\n"); 
    if(car(args) -> i == car(cdr(args)) -> i){
        returnValue -> i = 1; 
    }
    else {
      returnValue -> i = 0; 
    }
    return returnValue; 
}


Value *evalGreater(Value *args){
    Value *returnValue = talloc(sizeof(Value));
    returnValue->type = BOOL_TYPE;
    if(car(args) -> type != INT_TYPE ||  car(cdr(args)) -> type != INT_TYPE){
      evaluationError();
    }
    if(car(args) -> i > car(cdr(args)) -> i){
        returnValue -> i = 1; 
    }
    else {
      returnValue -> i = 0; 
    }
    return returnValue;
}


Value *evalLesser(Value *args){
  Value *returnValue = talloc(sizeof(Value));
    returnValue->type = BOOL_TYPE;
    if(car(args) -> type != INT_TYPE ||  car(cdr(args)) -> type != INT_TYPE){
      evaluationError();
    }
    if(car(args) -> i < car(cdr(args)) -> i){
        returnValue -> i = 1; 
    }
    else {
      returnValue -> i = 0; 
    }
    return returnValue;
}


//Value *evalCar(Value *args, Frame *frame){
Value *evalCar(Value *args){
    if(length(args) != 1){ //check that there is only 1 things in there 
        evaluationError();
    }
    if(args -> type != CONS_TYPE || car(args)-> type != CONS_TYPE){
    //everything needs to be a cons 
        evaluationError(); 
    }

    return car(car(args)); //return the very first thing 
}


//same as evalCar
//Value *evalCdr(Value *args, Frame *frame){
Value *evalCdr(Value *args){
    if(length(args) != 1){ //check that there is only 1 things in there 
        evaluationError();
    }
    if(args -> type != CONS_TYPE || car(args)-> type != CONS_TYPE){
    //everything needs to be a cons 
        evaluationError(); 
    }

    return cdr(car(args)); //return the rest
}


//Value *evalCons(Value *args, Frame *frame){
Value *evalCons(Value *args){
    if(length(args) != 2){ //check that there are aleast 2 things in there 
        evaluationError();
    }
    Value *thing1 = car(args); //the first value in args
    Value *thing2 = car(cdr(args)); //the second value in args
    return cons(thing1, thing2); //combind and return that 
}


Value *evalDefine(Value *args, Frame *frame){
   //Value *output = makeNull(); 
  if(length(args) < 2){ //make sure args has only one or 0 things in it 
    //printf("define length and about to return error"); 
    evaluationError();
  }
  while(frame->parent != NULL){  // make sure that frame has a parent/ isn't the very first item 
    frame = frame->parent;  //go to its parents 
  }
  if(car(args)->type != SYMBOL_TYPE){ //make sure that the value in args is a symbol 
    //printf("going into define and about to return error"); 
    evaluationError();
  }
  Value *newTempValue = cons(car(args), eval(car(cdr(args)), frame)); 
  //"adds" together the first value of args to the rest of the evaluted values in args and to the frame 
  frame->bindings = cons(newTempValue, frame->bindings); //sets what was evaluated above to the frame bindings 
    //return output; //just needs to return something 
  return makeNull();
}


void checkParameters(Value *args){
  while(args->type == CONS_TYPE){
    Value *checking = car(args);
    if(checking->type == CONS_TYPE){
      checkParameters(checking);
    }
    else if(checking->type == SYMBOL_TYPE){
      Value *otherParams = cdr(args);
      while(otherParams->type == CONS_TYPE){
        while(car(otherParams)->type == CONS_TYPE){
          otherParams = car(otherParams);
        }
        if(car(otherParams)->type != SYMBOL_TYPE){
          //printf("checking parameters and about to return error"); 
          evaluationError();
        }
        if(!strcmp(checking->s, car(otherParams)->s)){
          //printf("checking params 2 and about to return error"); 
          evaluationError();
        }
        otherParams = cdr(otherParams);
      }
    }
    else{
      evaluationError();
    }
    args = cdr(args);
  }
}


Value *evalLambda(Value *args, Frame *frame){
  if(length(args) < 2){ //make sure args has only one or 0 things in it 
    //printf("lambda length  and about to return error"); 
    evaluationError();
  }
  Value *output = talloc(sizeof(Value));
  output->type = CLOSURE_TYPE;
  //like in the drawings, make lambdas into closures 
   //set value struct to the the first value in args 
    // while(parameterNames-> type = CONS_TYPE){
    //     Value *check = car(parameterNames); 
    //     if(check -> type == CONS_TYPE){
    //shoudl we just make this a seperate function so it can recusiively check ? 
    //     }
    // }
  Value *parameterNames = car(args);
  checkParameters(parameterNames);
  output->cl.paramNames = car(args);
  args = cdr(args);
  output->cl.functionCode = car(args); //output -> cl -> functionCode is wrong 
    //output -> cl -> frame = frame;  
  output->cl.frame = frame;
  return output;
}


// Value *apply(Value *function, Value *args){
//    //Value *output = makeNull(); //create an empty value struct 
//   Frame *newFrame = talloc(sizeof(Frame));
//   newFrame->bindings = makeNull();
//   newFrame->parent = function->cl.frame;
//   Value *checking = function->cl.paramNames;
//   while(args->type == CONS_TYPE && checking->type == CONS_TYPE){ //make sure everything is a con cell type 
//     Value *newBinding = cons(car(checking), car(args)); //add first param name and first value in args together 
//     newFrame->bindings = cons(newBinding, newFrame->bindings); //add it onto the bindings 
//     checking = cdr(checking);  // go onto next one 
//     args = cdr(args); // go onto next one 
//   }
//   return eval(function->cl.functionCode, newFrame);
// }


//add in primitive type option 
Value *apply(Value *function, Value *args){
   //Value *output = makeNull(); //create an empty value struct 
    if(function -> type == CLOSURE_TYPE){
        Frame *newFrame = talloc(sizeof(Frame));
        newFrame->bindings = makeNull();
        newFrame->parent = function->cl.frame;
        Value *checking = function->cl.paramNames;
        while(args->type == CONS_TYPE && checking->type == CONS_TYPE){ //make sure everything is a con cell type 
          Value *newBinding = cons(car(checking), car(args)); //add first param name and first value in args together 
          newFrame->bindings = cons(newBinding, newFrame->bindings); //add it onto the bindings 
          checking = cdr(checking);  // go onto next one 
          args = cdr(args); // go onto next one 
        }
    return eval(function->cl.functionCode, newFrame);
    } 
    else if (function -> type == PRIMITIVE_TYPE){
        return function -> pf(args); 
    } 
    //evaluationError();
    return function; 
} 


/*
 * Adds a binding between the given name
 * and the input function. Used to add
 * bindings for primitive funtions to the top-level
 * bindings list.
 */
void bind(char *name, Value *(*function)(Value *), Frame *frame) {
  Value *inputFunction = talloc(sizeof(Value));
  inputFunction->type = PRIMITIVE_TYPE;
  inputFunction->pf = function;
  Value *givenName = talloc(sizeof(Value));
  givenName->type = SYMBOL_TYPE;
  givenName->s = name;
  Value *binding = cons(givenName, inputFunction);
  frame->bindings = cons(binding, frame->bindings);
}


void interpret(Value *tree){
  Frame *frame = talloc(sizeof(Frame));
  tree = reverse(tree);
  frame->parent = NULL;
  Value *nullVal = makeNull();
  frame->bindings = nullVal;
  bind("+", &evalPlus, frame);
  bind("null?", &evalNull, frame);
  bind("car", &evalCar, frame);
  bind("cdr", &evalCdr, frame);
  bind("cons", &evalCons, frame); 
  bind("-", &evalMinus, frame);
  bind("=", &evalEqual, frame); 
  bind(">", &evalGreater, frame);
  bind("<", &evalLesser, frame);
  while(tree->type == CONS_TYPE){
    display(eval(car(tree), frame));
    tree = cdr(tree);
  }
}

Value *eval(Value *expr, Frame *frame){

  Value *tree = expr;

  switch (tree->type)  {
    case INT_TYPE: {
      return tree;
      break;
    }
    case DOUBLE_TYPE:{
      return tree;
      break;
    }
    case BOOL_TYPE: {
      return tree;
      break;
    }  
    case STR_TYPE:{
      return tree;
      break;
    }
    case CLOSURE_TYPE:{
      return tree;
      break;
    }
    case PRIMITIVE_TYPE:{
      return tree;
      break;
    }
     case VOID_TYPE:{
      return tree;
      break; 
    }
    case NULL_TYPE:{
      //evaluationError(); 
      return tree;
      break;
    }
case SYMBOL_TYPE: {
      //return eval(lookUpSymbol(tree, frame), frame); 
      return lookUpSymbol(tree, frame); 
      break;
    }  
    case CONS_TYPE: {
      Value *first = car(tree);
      if(first->type == STR_TYPE){
        return eval(first, frame);
      }
      else if(first->type == SYMBOL_TYPE){
        if (!strcmp(first->s,"if")) { 
          Value *args = cdr(tree);
          Value *resultValue = evalIf(args,frame);
          return resultValue;
        }
        else if (!strcmp(first->s,"let")) {
          Value *args = cdr(tree);
          Frame *newFrame = talloc(sizeof(Frame));
          newFrame->parent = frame;
          Value *nullVal = makeNull();
          newFrame->bindings = nullVal;
          Value *resultValue = evalLet(args, newFrame);
          return resultValue;
        }
        else if (!strcmp(first->s,"letrec")) {
          //printf("is a let rec"); 
          Value *args = cdr(tree);
          //Frame *newFrame = talloc(sizeof(Frame));
          //newFrame->parent = frame;
          //Value *nullVal = makeNull();
          //newFrame->bindings = nullVal;
          //printf("going to let rec"); 
          Value *resultValue = evalLetrec(args, frame);
          //printf("come back from let rec"); 
          return resultValue;
        }
        else if (!strcmp(first->s,"let*")) { 
          //printf("is a let *\n"); 
          Value *args = cdr(tree);
          //printf("going to let star eval\n"); 
          Value *resultValue = evalLetStar(args,frame);
          //printf("out of let star eval\n"); 
          return resultValue;
        }
        else if (!strcmp(first->s,"set!")) { 
          Value *args = cdr(tree);
          Value *resultValue = evalSetBang(args,frame);
          return resultValue;
        }
         else if (!strcmp(first->s,"and")) { 
          Value *args = cdr(tree);
          Value *resultValue = evalAnd(args,frame);
          return resultValue;
        }
        else if (!strcmp(first->s,"or")) { 
          Value *args = cdr(tree);
          Value *resultValue = evalOr(args,frame);
          return resultValue;
        }
        else if(!strcmp(first->s,"quote")){
          Value *args = cdr(tree);
          //Value *resultValue = evalQuote(args, frame);
          Value *resultValue = evalQuote(args);
          return resultValue;
        }
        else if(!strcmp(first->s,"define")){
          Value *args = cdr(tree);
          Value *resultValue = evalDefine(args,frame);
          return resultValue;
        }
        else if(!strcmp(first->s,"begin")){
          Value *args = cdr(tree);
          Value *resultValue = evalBegin(args,frame);
          //return resultValue;
          return eval(resultValue, frame); 
        }
        else if(!strcmp(first->s,"lambda")){
          if(length(tree) < 2){
            //printf("of 2\n "); 
            evaluationError();
          }
          Value *args = cdr(tree);
          Value *resultValue = evalLambda(args,frame);
          return resultValue;
        }
        else{
          Value *output = eval(first, frame);
          if(output->type != CLOSURE_TYPE && output -> type != PRIMITIVE_TYPE){
            return output;
          }
          else{
            Value *args = cdr(tree);
            Value *input = makeNull();
            while(args->type == CONS_TYPE){
              input = cons(eval(car(args), frame), input);
              args = cdr(args);          
            }
            input = reverse(input);
            return apply(eval(first, frame), input);
          }
        }
      }
      else{
        Value *args = cdr(tree);
        Value *input = makeNull();
        while(args->type == CONS_TYPE){
          input = cons(eval(car(args), frame), input);
          args = cdr(args);          
        }
        input = reverse(input);
        return apply(eval(first, frame), input);
      }
      break;
    }
    default:
      printf("default");
      evaluationError();
      texit(1);
      break;
  }    
  return cdr(expr);
}


void display(Value *val){
  switch (val->type) {
      case INT_TYPE:
      printf("%i\n", val->i);
      break;
    case PTR_TYPE:
      printf("%p\n", val->p);
      break;
    case DOUBLE_TYPE:
      printf("%f\n", val->d);
      break;
    case SYMBOL_TYPE:
      printf("%s\n", val->s);
      break;
    case STR_TYPE:
      printf("%s\n", val->s);
      break;
    case NULL_TYPE:
      break;
    case VOID_TYPE:
      break;
    case CLOSURE_TYPE:
      printf("#<procedure>\n");
      break;
    case PRIMITIVE_TYPE:
      printf("#<primitive>\n");
      break;
    case CONS_TYPE:
        printf("(");
        while(val->type == CONS_TYPE){
        display(val->c.car);
        val = cdr(val);
        }
        if(val->type != NULL_TYPE){
          printf(". ");
          display(val);
        }
        printf(")\n");
      break;
    case BOOL_TYPE:
      if(val->i == 1){
        printf("#t\n");
      }
      else{
        printf("#f\n");
      }
      break;
    default:
      printf("other");
      break;
    }
}



