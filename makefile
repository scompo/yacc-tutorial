calc: lex.yy.c y.tab.c
	gcc -g lex.yy.c y.tab.c -o calc

lex.yy.c: y.tab.c calc.l
	flex calc.l

y.tab.c: calc.y
	byson -d calc.y

clean:
	rm -f lex.yy.c y.tab.c y.tab.h calc
