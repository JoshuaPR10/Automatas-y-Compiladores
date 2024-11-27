%{
#include <stdio.h>
#include <string.h>
int comment_count = 0;
int reserved_count = 0;
int variable_count = 0;
int number_count = 0;
int operator_count = 0;
%}
%%
/* PALABRAS RESERVADAS EN C++ */
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"| 
"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"| 
"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"| 
"union"|"unsigned"|"void"|"volatile"|"while"|"class"|"public"|"private"| 
"protected"|"template"|"typename"|"using"|"namespace"|"virtual"|"this"| 
"try"|"catch"|"new"|"delete"|"operator"|"bool"|"true"|"false"|"inline" { 
reserved_count++;
printf("PALABRA RESERVADA: %s\n");
}
/* COMENTARIOS */
"//"[^\n]*{
if(strlen(yytext)>2){
comment_count++;
printf("COMENTARIO DE UNA LINEA: %s\n");
}
}
"/*"([^*]|\*+[^/])*"*/" {
if(strlen(yytext)>4){
comment_count++;
printf("COMENTARIO DE MULTIPLES LINEAS.\n");
}
}
/* IDENTIFICACION DE NOMBRES DE VARIABLES */
[a-zA-Z_][a-zA-Z0-9_]*{
variable_count++;
printf("VARIABLE: %s\n");
}
/* CONSTANTES NUMERICAS */
[0-9]+{
number_count++;
printf("CONSTANTE NUMERICA: %s\n");
}
/* OPERADORES ARITMETICOS */
"+"|"-"|"*"|"/"|"%"{
operator_count++;
printf("OPERADOR ARITMETICO: %s\n");
}
/* Operadores lógicos */
"&&"|"||"|"!" {
operator_count++;
printf("OPERADOR LOGICO: %s\n");
}
/* SIMBOLOS ESPECIALES */
"{"|"}"|"["|"]"|"("|")"|";"|","|"."|":" {
printf("SIMBOLO ESPECIAL: %s\n");
}
/* IGNORAR ESPACIOS Y NUEVAS LINEAS AGREGADAS */
[ \t\n]+ { /* No hacer nada */ }
/* Cualquier otro carácter desconocido */
. {
printf("CARACTER DESCONOCIDO: %s\n");
}
%%
int main(int argc, char **argv) {
if (argc != 2) {
printf("Uso: %s <archivo_c++>\n", argv[0]);
return 1;
}
FILE *archivo = fopen(argv[1], "r");
if (!archivo) {
printf("Error al abrir el archivo %s\n", argv[1]);
return 1;
}
yyin = archivo;
yylex();
fclose(archivo);
printf("\n--- Resumen ---\n");
printf("Palabras reservadas encontradas: %d\n", reserved_count);
printf("Variables encontradas: %d\n", variable_count);
printf("Constantes numéricas encontradas: %d\n", number_count);
printf("Operadores encontrados: %d\n", operator_count);
printf("Comentarios encontrados: %d\n", comment_count);
    return 0;
}