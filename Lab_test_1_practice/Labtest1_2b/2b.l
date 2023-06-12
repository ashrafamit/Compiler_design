%option noyywrap

%{
#include "2b.tab.h"
%}

%%
"University" {return(UNIVERSITY);}
"of" {return(OF);}
"Rajshahi"|"Dhaka"|"Chittagong" {return(DISTRICT);}
%%
