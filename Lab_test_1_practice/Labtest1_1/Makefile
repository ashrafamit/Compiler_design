main:
	gcc -o prog prog.c
	gcc -E prog.c > prog.i
	gcc -S -masm=intel prog.i
	gcc -c -o prog.o prog.c
	objdump -M intel -d prog.o > prog.dump
	objdump -M intel -d prog.exe > prog.dump