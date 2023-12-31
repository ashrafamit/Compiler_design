/* A Bison parser, made by GNU Bison 2.4.2.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2006, 2009-2010 Free Software
   Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT = 258,
     FLOAT = 259,
     CHAR = 260,
     LINE = 261,
     IF = 262,
     ELIF = 263,
     ELSE = 264,
     PRINT = 265,
     INPUT = 266,
     FUNCTION = 267,
     BEGIN = 268,
     END = 269,
     return = 270,
     FOR = 271,
     NEXT = 272,
     TO = 273,
     ADDOP = 274,
     SUBOP = 275,
     MULOP = 276,
     DIVOP = 277,
     EQUOP = 278,
     LT = 279,
     GT = 280,
     MODE = 281,
     LPAREN = 282,
     RPAREN = 283,
     LBRACE = 284,
     RBRACE = 285,
     SEMI = 286,
     ASSIGN = 287,
     COLON = 288,
     DC = 289,
     ID = 290,
     FCONST = 291,
     CCONST = 292,
     ICONST = 293
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1685 of yacc.c  */
#line 12 "parser1.y"

    char str_val[100];
    int int_val;
	double double_val;



/* Line 1685 of yacc.c  */
#line 97 "parser1.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


