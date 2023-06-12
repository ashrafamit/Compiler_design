%option noyywrap

%{
#include "4b.tab.h"
%}

series 1[6-9]|20
department_code 0[0-9]|10
roll_number 0[0-9][1-9]|0[1-9]0|1[0-7][0-9]|180

%%
({series}{department_code}{roll_number}) {return ROLL;}
%%
