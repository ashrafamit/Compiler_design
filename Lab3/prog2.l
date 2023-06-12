%option noyywrap

%{
#include "prog2.tab.h"
%}

digit [0-9]
letter [_a-zA-Z]

%%
"int" {return(INT);}
{letter}({letter}|{digit})* {return(ID);}
"=" {return(ASSIGN);}
{digit}+ {yylval = atoi(yytext); return(NUM);}
";" {return(SEMI);}

%%