%{
    //1803070
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token N V P VV A O
%start S

%%
S: N V P VV A O;
%%

int main()
{
    if(!yyparse())
        printf("ACCEPTED\n");
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}