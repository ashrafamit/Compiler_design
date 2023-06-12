%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token NUM PLUS
%start S

%%
S: NUM PLUS NUM {printf("%d + %d = %d", $1, $3, $1+$3)};
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