%{
#include <stdio.h>
#include <stdlib.h>
FILE *yyin;
%}
Digit     [0-9]   Operador  [+*/-]
%%
{Digit}    +printf("Ingrese Numero: %s\n");
{Operador} +printf("Ingrese Operador: %s\n");
./* Ignorar otros caracteres */
%%
int main(int argc, char *argv[]){
if(argc < 2){
fprintf(stderr,"USO:%s<archivo>\n", argv[0]);
exit(1);
}
yyin = fopen(argv[1], "r");
if(!yyin){
perror("ERROR AL ABRIR EL ARCHIVO");
exit(1);
}
yylex();
fclose(yyin);
return 0;
}
