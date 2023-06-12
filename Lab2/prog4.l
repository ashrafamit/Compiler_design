%option noyywrap

%{
%}

digit [0-9]
char [A-Za-z]

%%
"int" {printf("%s -> Type\n", yytext);}
("_"|[A-Za-z])([A-Za-z]|[0-9]|"_")* {printf("%s -> ID\n", yytext);}
({digit})({char}|{digit}|"_")* {printf("%s -> Invalid ID\n", yytext);}
";" {printf("%s -> SEMI\n", yytext);}
. {}
%%

int main()
{
    yylex();
    return 0;
}