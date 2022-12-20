%{
%}
comment1 \/\*(.|n)*\*\/
comment2 \/\/.*
%%

{comment1} {}
{comment2} {}
%%
int yywrap() {}
int main()
{
yyin=fopen("in.c","r");
yyout=fopen("out.c","w");
yylex();
return 0;
}
