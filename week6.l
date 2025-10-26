%{
#include "y.tab.h"
%}

%%
a   { return 'a'; }
\n  { return 0; }
.   ;
%%

int yywrap() { return 1; }
