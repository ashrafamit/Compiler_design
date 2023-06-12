%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token UNIVERSITY OF DISTRICT
%start S

%%
S: UNIVERSITY OF DISTRICT;
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