%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	void yyerror();
	extern int lineno;
	extern int yylex();
%}

%token INT IF ELSE WHILE CONTINUE BREAK PRINT DOUBLE CHAR
%token ADDOP SUBOP MULOP DIVOP EQUOP LT GT
%token LPAREN RPAREN LBRACE RBRACE SEMI ASSIGN
%token ID
%token ICONST
%token FCONST
%token CCONST

%start code

%%
code: statements;

statements: statements statement | ;

statement:  declaration ;

declaration: INT ID ASSIGN exp SEMI;

exp: exp ADDOP terminal {printf("exp ADDOP terminal\n");}
	| terminal {printf("terminal\n");}
	;

terminal: terminal MULOP factor {printf("terminal MULOP factor\n");}
	| factor {printf("factor\n");}
	;

factor: ID  {printf("ID\n");}| ICONST {printf("ICONST\n");}
	;
%%

void yyerror ()
{
	printf("Syntax error at line %d\n", lineno);
	exit(1);
}

int main (int argc, char *argv[])
{
	if(!yyparse())
		printf("Parsing finished!\n");	
	return 0;
}
