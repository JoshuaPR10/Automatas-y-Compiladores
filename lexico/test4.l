%option noyywrap
%{
#include<stdio.h>
%}
%%
[\n\t];
[a-zA-Z]{4}[0-9]{6}[a-zA-Z0-9]{3}+ {printf("RFC v�lido:\n");}
.|\n {printf("Formato no v�lido:\n");}
%%
int main()
{
printf("INGRESE RFC:");
yylex();return 0;
}