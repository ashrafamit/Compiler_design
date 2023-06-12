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

%left LT GT /*LT GT has lowest precedence*/
%left ADDOP 
%left MULOP /*MULOP has highest precedence*/

%start code

%%
code: statements;

statements: statements statement | ;

statement:  declaration | if_stat ;

declaration: INT ID ASSIGN exp SEMI;

if_stat: IF LPAREN exp RPAREN LBRACE statements RBRACE;

exp: exp ADDOP exp 
	| exp MULOP exp
    | exp GT exp
    | ID
    | ICONST
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
