%{
%}
spaces [\n|\t|" "]
%%
{spaces} {}
%%
int yywrap() {}
int main()
{
 
yyin=fopen("in.c","r");
yyout=fopen("out.c","w");
yylex();
return 0;
}

