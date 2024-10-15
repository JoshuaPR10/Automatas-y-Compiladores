%{
#include <stdio.h>
%}
%%
/*COMENTARIOS*/
"//".* {printf("COMENTARIO:\n");}
"/*"(.|\n)*"*/" {printf("COMENTARIO:\n");}

/* TEXTO QUE SE VA A PRESENTAR EN LA PANTALLA (dentro de printf o puts)*/
"printf"\"(".*"\")" {printf("TEXTO SALIDA:\n");}
"puts"\"(".*"\")" {printf("TEXTO SALIDA:\n");}

/*QUE IGNORE OTROS TOKENS*/
. {/*IGNORAR*/}
%%
int main() {
yylex();return 0;
}