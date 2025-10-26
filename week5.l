%{
#include <stdio.h>
%}

%%
[a|b]+ { printf("Valid string\n"); }
. { printf("Invalid\n"); }
[\n] return 0;
%%

int main() {
    printf("Enter string to accept language\n");
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}




