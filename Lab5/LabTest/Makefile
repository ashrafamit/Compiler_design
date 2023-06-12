input = input.txt
output = output.txt

p: lexer.l parser.y
	bison -d parser.y 
	flex lexer.l 
	gcc parser.tab.c lex.yy.c
	a <$(input)> $(output)