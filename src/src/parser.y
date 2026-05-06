%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();

%}

%union {
    int num;
}

%token <num> NUMBER
%token ID
%token INT
%token PLUS MINUS MUL DIV
%token ASSIGN SEMICOLON

%%

program:
    statements
    ;

statements:
      statements statement
    | statement
    ;

statement:
      declaration
    | assignment
    ;

declaration:
      INT ID SEMICOLON
      {
          printf("Valid Variable Declaration\n");
      }
    ;

assignment:
      ID ASSIGN expression SEMICOLON
      {
          printf("Valid Assignment Statement\n");
      }
    ;

expression:
      expression PLUS term
    | expression MINUS term
    | term
    ;

term:
      term MUL factor
    | term DIV factor
    | factor
    ;

factor:
      NUMBER
    | ID
    ;

%%

void yyerror(const char *s) {
    printf("Syntax Error: %s\n", s);
}

int main() {
    printf("Mini Compiler Started\n");
    yyparse();
    return 0;
}
