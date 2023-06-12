input = input.txt
output = output.txt

p: lexer1.l parser1.y
	bison -d parser1.y 
	flex lexer1.l 
	gcc parser1.tab.c lex.yy.c
	a <$(input)> $(output)