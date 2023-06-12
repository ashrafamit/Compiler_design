%option noyywrap

%{
%}

%%
"RUET"|"CUET"|"BUET" {printf("%s -> UNIVERSITY\n",yytext);}
"EEE"|"CSE" {printf("%s -> DEPARTMENT\n",yytext);}
"17"|"18"|"19" {printf("%s -> SERIES\n",yytext);}
. {}
%%

int main()
{
    yylex();
    return 0;
}