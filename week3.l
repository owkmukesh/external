%{
#include <stdio.h>
int a = 0, b = 0;
char op;
%}

%%
[0-9]   { if (a == 0) a = yytext[0] - '0'; else b = yytext[0] - '0'; }
[+\-*/] { op = yytext[0]; }
\n      {
           int result = 0;
           if (op == '+') result = a + b;
           else if (op == '-') result = a - b;
           else if (op == '*') result = a * b;
           else if (op == '/') result = b ? a / b : 0;
           printf("Result: %d\n", result);
           a = b = 0;
        }
.       ; // ignore other characters
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}

