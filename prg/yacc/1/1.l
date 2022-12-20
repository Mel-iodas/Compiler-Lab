%{
#include"y.tab.h"
%}
%%
"a" {return A;}
[\n|.] {return yytext[0];}
"d" {return B;}
%%
