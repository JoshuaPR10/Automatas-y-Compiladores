/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package programa3;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/**
 *
 * @author Lenovo
 */
public class Programa3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        //TITULO
        System.out.println("PROGRAMA 3\n");
        
        
        // Solicitar el texto al usuario
        System.out.println("INGRESA UN TEXTO --> ");
        String texto = scanner.nextLine().trim();
        
        // Total de caracteres con y sin espacios
        int totalCaracteresConEspacios = texto.length();
        int totalCaracteresSinEspacios = texto.replace(" ", "").length();
        
        // Dividir el texto en lexemas
        String[] lexemas = texto.split("\\s+");
        int totalLexemas = lexemas.length;
        
        int totalPalabras = 0;
        int totalNumeros = 0;
        int totalCompuestas = 0;
        
        // Clasificar los lexemas
        for (String lexema : lexemas) {
            if (lexema.matches("-?\\d+")) {
                totalNumeros++;
            } else if (lexema.matches("[a-zA-Z]+")) {
                totalPalabras++;
            } else {
                totalCompuestas++;
            }
        }
        
        // Imprimir los resultados
        System.out.println("TOTAL DE CARACTERES (CON ESPACIOS) --> " + totalCaracteresConEspacios);
        System.out.println("TOTAL DE CARACTERES (SIN ESPACIOS) --> " + totalCaracteresSinEspacios);
        System.out.println("TOTAL DE LEXEMAS --> " + totalLexemas);
        System.out.println("TOTAL DE PALABRAS --> " + totalPalabras);
        System.out.println("TOTAL DE NUMEROS --> " + totalNumeros);
        System.out.println("TOTAL DE COMBINADAS --> " + totalCompuestas);
        
        scanner.close();
    }
}