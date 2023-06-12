%option noyywrap

%{
%}

digit 0[0-9][1-9]|0[1-9]0|1[0-7][0-9]|180

%%
{digit} {printf("%s -> DIGIT\n",yytext);}
. {printf("%s -> UNRECOGNIZED CHARACTER\n",yytext);}
%%

int main()
{
    yylex();
    return 0;
}