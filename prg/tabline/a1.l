%{
int w=0;
%}
spaces [\t|" "]
%%
{spaces} {w++ ;}
if(w>1)
{spaces} {" " ;}
%%
int yywrap() {}
int main()
{
yyin=fopen("in.c","r");
yyout=fopen("out.c","w");
yylex();
return 0;
}
