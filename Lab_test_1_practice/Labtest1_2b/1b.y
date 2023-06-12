%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token UNIVERSITY DEPARTMENT SERIES
%start S

%%
S: UNIVERSITY DEPARTMENT SERIES;
%%

int main()
{
    yyparse();
    printf("Accepted\n");
    return 0;
}
void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}