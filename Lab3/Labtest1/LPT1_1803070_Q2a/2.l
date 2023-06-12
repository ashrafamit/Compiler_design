%option noyywrap

%{
%}

%%
"We"|"I" {printf("%s -> Person\n", yytext);}
"Like"|"Want" {printf("%s -> Verb\n",yytext);}
"to" {printf("%s -> To\n",yytext);}
"Buy" {printf("%s -> Buy\n",yytext);}
"10"|"20"|"30" {printf("%s -> Amount\n",yytext);}
"Apples"|"Mangoes" {printf("%s -> Fruits\n",yytext);}
. {}
%%

int main()
{
    yylex();
    return 0;
}

