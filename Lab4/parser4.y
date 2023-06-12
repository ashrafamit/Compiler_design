%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
    #include "symtab.c"
	void yyerror();
	extern int lineno;
	extern int yylex();
%}

%union
{
    char str_val[100];
    int int_val;
	double double_val;
}


%token INT IF ELSE WHILE CONTINUE BREAK PRINT DOUBLE CHAR
%token ADDOP SUBOP MULOP DIVOP EQUOP LT GT
%token LPAREN RPAREN LBRACE RBRACE SEMI ASSIGN
%token <str_val> ID
%token FCONST
%token CCONST
%token ICONST

%type<int_val> type exp constant

%left LT GT /*LT GT has lowest precedence*/
%left ADDOP 
%left MULOP /*MULOP has highest precedence*/

%start code

%%
code: statements;

statements: statements statement 
	|
	;

statement:  declaration 
	| assignment
	| if_stat
	;

declaration: type ID ASSIGN exp SEMI {printf("%s\n", $2); insert($2,$1);} 
	| type ID SEMI {printf("%s\n", $2); insert($2,$1);}
	;

assignment:ID ASSIGN exp SEMI 
			{
				if(idcheck($1)!=-1)
				{
					printf("ID is found!\n");
					int tempdataType1=gettype($1);
					printf("Type of ID is %d\n",tempdataType1);
					int tempdataType2=$3;
					printf("Type of EXP is %d\n",tempdataType2);

					int resultDataType=typecheck(gettype($1), $3);
					printf("Type of Result is %d\n",resultDataType);
					
				}
			}

if_stat: IF LPAREN exp RPAREN LBRACE statements RBRACE optional_else
    ;

optional_else: ELSE IF LPAREN exp RPAREN LBRACE statements RBRACE 
	| ELSE LBRACE statements RBRACE 
	| 
	;

exp: exp ADDOP exp 
    {
        printf("exp1 = %d exp2 =%d\n",$1,$3);
        printf("type =%d\n",typecheck($1,$3));
		$$ = typecheck($1, $3);
    }
	| exp MULOP exp
	{
        printf("exp1 = %d exp2 =%d\n",$1,$3);
        printf("type =%d\n",typecheck($1,$3));
		$$ = typecheck($1, $3);
    }
    | exp GT exp
	{
        printf("exp1 = %d exp2 =%d\n",$1,$3);
        printf("type =%d\n",typecheck($1,$3));
		$$ = typecheck($1, $3);
    }
	| exp LT exp
	{
        printf("exp1 = %d exp2 =%d\n",$1,$3);
        printf("type =%d\n",typecheck($1,$3));
		$$ = typecheck($1, $3);
    }
    | ID 
	{
		if(idcheck($1)!=-1)
		{
			$$=gettype($1);
		}
	}
    | constant
	{
		$$ = $1;
	}
	;

type: INT {$$=INT_TYPE;}
    | DOUBLE {$$=REAL_TYPE;}
	| CHAR {$$=CHAR_TYPE;}
    ;
constant: ICONST {$$=INT_TYPE;}
        | FCONST {$$=REAL_TYPE;}
        | CCONST {$$=CHAR_TYPE;}
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
