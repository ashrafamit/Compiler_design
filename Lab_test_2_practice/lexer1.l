%option noyywrap

%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include "parser1.tab.h"
	
	int lineno = 1; // initialize to 1
	void yyerror();
%}

alpha     [a-zA-Z]
digit     [0-9]
alnum     {alpha}|{digit}
print     [ -~]

LINE      ({alpha}{alnum}|\s)*
ID        {alpha}{alnum}*
ICONST    [0-9]{digit}*
FCONST    {digit}*"."{digit}+
CCONST    (\'{print}\')
%%

"//".*        { } 

"int"       { return INT; }
"float"    { return FLOAT; }
"char"		{ return CHAR; }
{LINE}    {return LINE;}

"if"		{return IF;}
"elif"		{return ELIF;}
"else"		{return ELSE;}

"print"		{ return PRINT; }
"input"		{ return INPUT; }


"function"		{ return FUNCTION; }
"begin"		{ return BEGIN; }
"end"		{ return END; }
"return"		{ return RETURN; }

"for"		{ return FOR; }
"next"		{ return NEXT; }
"to"		{ return TO; }



"+"       { return ADDOP; }
"-"       { return SUBOP; }
"*"       { return MULOP; }
"/"       { return DIVOP; }
"=="      { return EQUOP; }
">"       { return GT; }
"<"       { return LT; }
"%"       { return MODE; }


"("       { return LPAREN; }
")"       { return RPAREN; }
"{"       { return LBRACE; }
"}"       { return RBRACE; }
";"       { return SEMI; }
"="       { return ASSIGN; }
":"       { return COLON; }
'\"'      { return DC; }


{ID}        {strcpy(yylval.str_val, yytext); return ID;}
{ICONST}    {yylval.int_val = atoi(yytext); return ICONST;}
{FCONST}    {yylval.double_val = atof(yytext); return FCONST;}
{CCONST}    {strcpy(yylval.str_val, yytext); return CCONST;}

"\n"        { lineno += 1; }
[ \t\r\f]+  

.       { yyerror("Unrecognized character"); }
