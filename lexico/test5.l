%option noyywrap
%{
#include<stdio.h>
%}
%%
[\n\t];
[a-zA-Z]{4}[0-9]{6}[a-zA-Z]{1}[a-zA-Z]{2}[a-zA-Z0-9]{5}+ {printf("CURP valido:\n");}
.|\n {printf("Formato no válido:\n");}
%%
int main()
{
printf("INGRESE CURP:");
yylex();return 0;
}