%option noyywrap

%{
    //1803070
#include "prog1.tab.h"
%}

%%
"We"|"I" {return(N);}
"Like"|"Want" {return(V);}
"to" {return(P);}
"Buy" {return(VV);}
"10"|"20"|"30" {return(A);}
"Apples"|"Mangoes" {return(O);}
%%