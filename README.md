yacc -d yacc.y
lex week6.l
cc lex.yy.c y.tab.c
