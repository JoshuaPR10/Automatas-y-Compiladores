%option noyywrap
%{
#include<stdio.h>
%}
%%
[\n\t];
[0-9]+\.[0-9]+ {printf("NUMERO DECIMAL-->:\n");}
%%
int main()
{
printf("INGRESE NUMERO DECIMAL:");
yylex();return 0;
}