%option noyywrap

%{
#include "3b.tab.h"
%}

digit 0[0-9][1-9]|0[1-9]0|1[0-7][0-9]|180

%%
{digit} {return(ROLL);}

%%
