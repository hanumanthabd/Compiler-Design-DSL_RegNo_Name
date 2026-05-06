all:
	bison -d src/parser.y
	flex src/lexer.l
	gcc parser.tab.c lex.yy.c src/ast.c src/semantic.c src/icg.c -o compiler

run:
	./compiler
