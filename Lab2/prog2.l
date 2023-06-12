%option noyywrap

%{
%}

%%
"RUET"|"KUET" {printf("%s -> University\n", yytext);}
"CSE"|"EEE" {printf("%s -> Dept\n", yytext);}
"18"|"17" {printf("%s -> Batch\n", yytext);}
. {}
%%

int main()
{
    yylex();
    return 0;
}