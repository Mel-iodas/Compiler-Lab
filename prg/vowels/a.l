%{
int w=0;
int c=0;
%}
vowels[aeiouAEIOU]
consonents[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]
%%
{vowels} {w++;}
{consonents} {c++;}
"\n" {return 0;}
%%
int yywrap(){}
int main()
{
printf("enter a string\n");
yylex();
printf("no of vowels%d \n",w);
printf("no of consonents%d \n",c);
return 0;
}


