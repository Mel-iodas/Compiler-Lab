%{
int w=0;
int c=0;
%}
numbers[0987654321]
arithmetic[+-=/*%&]
%%
{numbers} {w++;}
{arithmetic} {c++;}
"\n" {return 0;}
%%
int yywrap(){}
int main()
{
printf("enter an arithmetic expression\n");
yylex();
printf("digits %d \n",w);
printf("operators %d \n",c);
return 0;
}

