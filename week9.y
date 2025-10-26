%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
int yyerror(const char *);
%}


%token '+' '*' '(' ')' 'i'
%start E

%%

E : E '+' T
  | T
  ;

T : T '*' F
  | F
  ;

F : '(' E ')'
  | 'i'
  ;

%%

int yylex() {
    int c;
    c = getchar();
    if (c == '\n' || c == EOF)
        return 0;
    return c;
}

int yyerror(const char *s) {
    printf("error\n");
    exit(1);
    return 0;
}

int main() {
    yyparse();
    printf("accepted\n");
    return 0;
}
