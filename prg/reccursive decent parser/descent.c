#include<stdio.h>
char input[10];
int lookahead=0;
void S();
void A();
void match(char t);
int main()
{
printf("enter the input:");
gets(input);
S();
if(input[lookahead]=='$')
{
printf("\n accepted");
}
}
void S()
{
if(input[lookahead]=='c')
{
match('c');
A();
match('d');
}
else
{
printf("\n error");
}
}
void A()
{
if(input[lookahead]=='a')
{
match('a');
if(input[lookahead]=='b')
{
match('b');
}
}
else
{
printf("\n error");
}
}
void match(char t)
{
if(input[lookahead]==t)
{
lookahead++;
}
else
{
printf("error");
}
}
