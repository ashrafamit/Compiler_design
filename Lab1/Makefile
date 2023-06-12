main:
	gcc -o HelloWorld HelloWorld.c


main2:
	gcc -c -o ./lib/hellomake.o ./src/hellomake.c -I./include
	gcc -c -o ./lib/hellofunc.o ./src/hellofunc.c -I./include
	gcc -o ./build/hello ./lib/hellomake.o ./lib/hellofunc.o -I./include

clean:
	rm -f *.o


main3:
	# flex prog1.l
	# gcc lex.yy.c
	bison -d prog1.y
	flex prog1.l
	gcc prog1.tab.c lex.yy.c
	a.exe < input.txt