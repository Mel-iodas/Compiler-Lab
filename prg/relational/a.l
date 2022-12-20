%{
int w=0;
int c=0;
int d=0;
%}
numbers[0987654321]
arithmetic[+-/*%&]
relational ">"|"<"|"="|">>"|"<<"|">="|"<="|"=="|"!="
%%
{numbers} {w++;}
{arithmetic} {c++;}
{relational} {d++;}
"\n" {return 0;}
%%
int yywrap(){}
int main()
{
printf("enter an arithmetic expression\n");
yylex();
printf("digits %d \n",w);
printf("operators %d \n",c);
printf("relational operators %d \n",d);
return 0;
}
