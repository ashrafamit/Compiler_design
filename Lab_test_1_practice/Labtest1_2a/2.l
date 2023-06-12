%option noyywrap

%{
%}

%%
"University" {printf("%s -> UNIVERSITY\n",yytext);}
"of" {printf("%s -> OF\n",yytext);}
"Dhaka"|"Rajshahi"|"Chittagong" {printf("%s -> DISTRICT\n",yytext);}
%%

int main()
{
    yylex();
    return 0;
}