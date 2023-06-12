%option noyywrap

%{
#include "prog1.tab.h"
%}

digit [0-9]

%%
{digit}+ {yylval = atoi(yytext); return(NUM);}
"+" {return(PLUS);}
%%