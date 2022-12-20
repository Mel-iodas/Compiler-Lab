%{
%}
abc [a-zA-Z]*
%%
{abc} {for(int i=0;i<yyleng;i++)
{
if(yytext[i]=='a'&&yytext[i+1]=='b'&&yytext[i+2]=='c')
{
yytext[i] = 'A';
yytext[i+1] ='B';
yytext[i+2] ='C';
}
}
printf("%s", yytext);
}
"\n" {return 0;}
%%
int yywrap(){}
int main()
{
printf("enter the string: \n");
yylex();
return 0;
}

