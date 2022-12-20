%{
int n=1;
%}
line .*\n
%%

{line} {printf("%d:%s",n++,yytext);}
%%
int yywrap() {}
int main()
{
yyin=fopen("in.c","r");
yyout=fopen("out.c","w");
yylex();
return 0;
}
