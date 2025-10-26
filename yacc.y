%{
#include <stdio.h>
int yylex(void);
int yyerror(const char *s);
%}

%%
S : 'a' A   { printf("String accepted\n"); }
  | 'a'     { printf("String accepted\n"); }
  ;

A : 'a'
  ;
%%

int main() {
    printf("Enter string:\n");
    yyparse();
    return 0;
}

int yyerror(const char *msg) {
    printf("String rejected\n");
    return 0;
}



