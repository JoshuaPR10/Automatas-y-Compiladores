%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
FILE *yyin;
int contador_correos_validos = 0; // Contador para correos válidos
%}
IZQUIERDA[a-zA-Z0-9._%+-]
DERECHA[a-zA-Z0-9.-]
ARROBA + @
DOMINIO\.[a-zA-Z]{2,}
%%
{IZQUIERDA}+{ARROBA}{DERECHA}+{DOMINIO} {
printf("El CORREO ELECTRONICO ES VALIDO: %s\n", yytext);
contador_correos_validos++;
}
{ARROBA}|{DOMINIO} {
printf("ERROR: Correo electrónico incompleto o mal formado: %s\n", yytext);
}
.|\n {
// IGNORAR CARACTERES DESCONOCIDOS
}
%%
int main(int argc, char *argv[]) {
if(argc < 2){
fprintf(stderr, "USO: %s <archivo>\n", argv[0]);
exit(1);
}
yyin = fopen(argv[1], "r");
if(!yyin) {
error("ERROR AL ABRIR EL ARCHIVO");
exit(1);
}
printf("ANALIZANDO EL ARCHIVO: %s\n", argv[1]);
yylex();
fclose(yyin);
printf("\nTOTAL DE CORREOS VALIDOS ENCONTRADOS: %d\n", contador_correos_validos);
return 0;
}