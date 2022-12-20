%{
int w=0;
int c=0;
int d=0;
%}
operator [+|-|/|*]
digit [0-9]*
letter [a-z A-Z]+
identifier {letter}({letter}|{digit})*
%%
{operator} {w++;}
{identifier} {c++;}
"\n" {return 0;}
%%
int yywrap() {}
int main()
{
printf("enter a input\n");
yylex();
printf("operator %d \n",w);
printf("identifier %d \n",c);
return 0;
}

