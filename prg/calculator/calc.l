%{
#include "y.tab.h"
int yylval;
%}
number[0-9]+
%%
" " {}
{number} {yylval=atoi(yytext);return DIGIT;}
\n|. {return yytext[0];}
%%
