%option noyywrap

%{
#include "1b.tab.h"
%}

%%
"RUET"|"CUET"|"BUET" {return(UNIVERSITY);}
"EEE"|"CSE" {return(DEPARTMENT);}
"17"|"18"|"19" {return(SERIES);}
%%
