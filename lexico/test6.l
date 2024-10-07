option noyywrap
%{
#include<stdio.h>
%}
%%
[\n\t];
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.+[a-zA-Z]+{2,4}+ {printf("Email valido:\n");}
.|\n {printf("Formato no válido:\n");}
%%
int main()
{
printf("INGRESE CURP:");
yylex();return 0;
}