%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token ROLL
%start S

%%
S: ROLL;
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