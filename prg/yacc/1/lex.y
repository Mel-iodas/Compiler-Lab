%{
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
int yylex();
int yyerror();
%}
%token A B
%%
E:S{printf("\n valid string"),exit(0);}
; 
S:C C
; 
C:A C
|B
;
%%
int main()
{
printf("enter the string");
yyparse();
exit(0);
}
