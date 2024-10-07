%option noyywrap
%{
#include<stdio.h>
%}
%%
[\n\t];
[A-Za-z]+[0-9]+[_]+ {printf("VARIABLE:\n");}
%%
int main()
{
printf("INGRESE VARIABLES:");
yylex();return 0;
}