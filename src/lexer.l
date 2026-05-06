%{
#include "parser.tab.h"
#include <stdio.h>
%}

%%

"int"           { return INT; }
[0-9]+          { yylval.num = atoi(yytext); return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]*  { return ID; }

"+"             { return PLUS; }
"-"             { return MINUS; }
"*"             { return MUL; }
"/"             { return DIV; }

"="             { return ASSIGN; }
";"             { return SEMICOLON; }

[ \t\n]         ;

.               { printf("Unknown Character: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
