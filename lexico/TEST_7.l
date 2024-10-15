%{
#include <stdio.h>
%}
%%
[a-z]    { putchar(yytext[0]); }/* SI ES MINUSCULA, SE IMPRIME TAL CUAL */
[A-Z]    { putchar(yytext[0] + 'a' - 'A'); }/* CONVERTIR A MINUSCULA */
.        { putchar(yytext[0]); }/* PARA CUALQUIER CARACTER SIGUIENTE */
\n       { putchar('\n'); }/* PARA LAS LINEAS NUEVAS */
%%
int main(){
yylex();return 0;
}