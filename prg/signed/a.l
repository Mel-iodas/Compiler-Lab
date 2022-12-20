%{
int w=0;
int c=0;
int d=0;
%}
digit [0-9]
num {digit}*
sign [+-]{num}
unsign {num}
%%
{sign} {w++;}
{unsign} {c++;}
"\n" {return 0;}
%%
int yywrap() {}
int main()
{
printf("enter a number\n");
yylex();
printf("no of signed %d \n",w);
printf("no of unsigned %d \n",c);
return 0;
}

