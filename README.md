# Compiler Design DSL Project

## Features

- Lexical Analysis using Flex
- Parsing using Bison
- AST Construction
- Semantic Analysis
- Intermediate Code Generation

## Tools Used

- C Programming
- Flex
- Bison
- GCC
- VS Code

## Folder Structure

src/ -> source files
test/ -> sample input
output/ -> outputs

## Compile Commands

bison -d src/parser.y

flex src/lexer.l

gcc parser.tab.c lex.yy.c src/ast.c src/semantic.c src/icg.c -o compiler

## Run

./compiler

## Sample Input

int a;
a = 10 + 20;

## Sample Output

Valid Variable Declaration
Valid Assignment Statement

Semantic Analysis Completed Successfully

Three Address Code:
t1 = a + b
t2 = t1 * c
x = t2
