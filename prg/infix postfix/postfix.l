%{
#include"y.tab.h"
int yylval;
%}

number[0-9]+
%%
" " {}
{number} {yylval=atoi(yytext);return NUM;}
\n {return yytext[0];}
. {return yytext[0];}
%%
