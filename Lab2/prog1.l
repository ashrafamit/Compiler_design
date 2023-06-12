%option noyywrap

%{
#include "prog1.tab.h"
%}

%%
"I"|"We"|"You" {return(N);}
"eat"|"love" {return(V);}
"and" {return(A);}
"rice"|"mango"|"apple" {return(O);}
%%