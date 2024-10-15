%{
#include <stdio.h>
%}
%%
/*COMENTARIOS CON UN ESTILO C*/
"//".* {printf("AGREGAR COMENTARIO:\n");}
"/*"(.|\n)*"*/" {printf("AGREGAR COMENTARIO:\n");}
/*TEXTO QUE SE PRESENTA EN PANTALLA (dentro de printf o puts)*/
"printf"\"(".*"\")" {printf("TEXTO DE SALIDA:\n");}
"puts"\"(".*"\")"  {printf("TEXTO DE SALIDA:\n");}
/*QUE IGNORE OTROS TOKENS*/
. {/*IGNORAR*/}
%%
int main() {
yylex();return 0;
}