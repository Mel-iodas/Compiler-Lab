#include<stdio.h>
#include<string.h>
void follow(char);
void first(char);
char production[10][10],f[10];
int n,m=0,p,i=0,j=0;

void first(char c)
{
int k;
if(!isupper(c))
f[m++]=c;
for(k=0;k<n;k++)
{
if(production[k][0]==c)
{
if(production[k][2]=='$')
follow(production[k][0]);
else if(islower(production[k][2]))
f[m++]=production[k][2];
else first(production[k][2]);
}
}
}
void follow(char c)
{
if(production[0][0]==c)
f[m++]='$';
for(i=0;i<n;i++)
{
for(j=2;j<strlen(production[i]);j++)
{
if(production[i][j]==c)
{
if(production[i][j+1]!='\0')
first(production[i][j+1]);
if(production[i][j+1]=='\0' && c!=production[i][0])
follow(production[i][0]);
}
}
}
}
int main(){
int i,z;
char c,ch;
printf("Input the number of productions:\n");
scanf("%d",&n);
printf("Input the productions:\n");
for(i=0;i<n;i++)
scanf("%s%c",production[i],&ch);
do{
m=0;
printf("Enter the element: ");
scanf("%c",&c);
first(c);
printf("FIRST of %c={",c);
for(i=0;i<m;i++)
printf("%c	",f[i]);
printf("}\n");
strcpy(f," ");
m=0;
follow(c);
printf("FOLLOW of %c={",c);
for(i=0;i<m;i++)
printf("%c	",f[i]);
printf("}\n");
printf("Do you wish to continue(1/0)?");
scanf("%d	%c	",&z,&ch);
}while(z==1);
return(0);
}
