%option noyywrap

%{
#include "prog1.tab.h"
%}

%%
"I" {retrun(N);}
"EAT" {retrun(V);}
"RICE" {retrun(O);}
%%

int main()
{
    yylex();
    return 0;
}