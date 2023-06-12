input = input.txt
output = output.txt

p: lexer.l parser.y
	bison -d parser.y 
	flex lexer.l 
	gcc parser.tab.c lex.yy.c
	a <$(input)> $(output)
p2: lexer2.l parser2.y
	bison -d parser2.y 
	flex lexer2.l 
	gcc parser2.tab.c lex.yy.c
	a <$(input)> $(output)
p3: lexer3.l parser3.y
	bison -d parser3.y 
	flex lexer3.l 
	gcc parser3.tab.c lex.yy.c
	a <$(input)> $(output)
p4: lexer4.l parser4.y
	bison -d parser4.y 
	flex lexer4.l 
	gcc parser4.tab.c lex.yy.c
	a <$(input)> $(output)
	


