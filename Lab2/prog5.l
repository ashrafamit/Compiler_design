%option noyywrap

%{
%}

digit [0-9]

%%
("+"|"-")?({digit})*(".")({digit})+ {printf("%s -> Floating Number\n", yytext);}
. {}
%%

int main()
{
    yylex();
    return 0;
}