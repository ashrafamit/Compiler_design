%option noyywrap

%{
%}

series (1[6-9]|20)
department_code (0[0-9]|10)
roll_number (0[0-9][1-9]|0[1-9]0|1[0-7][0-9]|180)

%%
({series}{department_code}{roll_number}) {printf("%c%c -> SERIES\n%c%c -> DEPT\n%c%c%c -> ROLL\n",yytext[0],yytext[1],yytext[2],yytext[3],yytext[4],yytext[5],yytext[6]);}
. {printf("%s -> UNRECOGNIZED CHARACTER\n",yytext);}
%%

int main()
{
    yylex();
    return 0;
}