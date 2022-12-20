%{
#include<ctype.h>
#include<stdio.h>
int yyerror();
int yylex();
%}
%token NUM
%left'+''-'
%left'*''/''%'
%right NEGATIVE
%%
S:E'\n'{printf("\n");return 0;}
E:E'+'E {printf("+");}
|E'*'E {printf("*");}
|E'-'E {printf("-");}
|E'/'E {printf("mod");}
|'('E')'
|'-'E%prec NEGATIVE {printf("-");}
|NUM {printf("%d",yylval);}
;
%%

int main()
{
printf("enter the expression:\n");
yyparse();
}


