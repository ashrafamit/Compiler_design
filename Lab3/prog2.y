%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token INT ID ASSIGN NUM SEMI 
%start S

%%
S: INT ID ASSIGN NUM SEMI;
%%

int main()
{
    if(!yyparse())
        printf("Parsing Finished\n");
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}