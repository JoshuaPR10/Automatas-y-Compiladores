%{
#include <stdio.h>
%}
%%
/*VERBOS DE LA CATEGORIA ANALIZAR*/
analizar|comparar|diferenciar|organizar|examinar {printf("VERBO DE ANALISIS:\n"); }
/* ADJETIVOS CALIFICATIVOS POSITIVOS*/
bueno|excelente|maravilloso|fant�stico {printf("ADEJTIVO POSITIVO:\n");}
/*CONJUNCIONES*/
y|o|pero|aunque|sin embargo {printf("CONJUNCION:\n");}
/*PREPOSICIONES*/
a|ante|bajo|cabe|con|contra|de|desde|en|entre {printf("PREPOSICION:\n");}
/*PRONOMBRES*/
yo|t�|�l|ella|nosotros|vosotros|ellos|ellas  {printf("PRONOMBRE:\n");}
[a-zA-Z]+ {/*IGNORAR OTRAS PALABRAS*/}
%%
int main() {
yylex();return 0;
}