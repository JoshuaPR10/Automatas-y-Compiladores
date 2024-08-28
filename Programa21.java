/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package programa21;

import java.util.Scanner;
/**
 *
 * @author Lenovo
 */
public class Programa21 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String opcion;
        
        do {
            // Leer la cadena de caracteres
            System.out.println("INGRESA UNA CADENA DE CARACTERES:");
            String cadena = scanner.nextLine();
            
            // Quitar los espacios al principio y al final
            cadena = cadena.trim();
            
            // Dividir la cadena en partes (palabras)
            String[] partes = cadena.split("\\s+");
            
            int contadorEnteros = 0;
            int contadorPalabras = 0;
            int contadorCompuestas = 0;
            
            // Verificar cada parte de la cadena
            for (String parte : partes) {
                if (parte.matches("-?\\d+")) {
                    contadorEnteros++;
                } else if (parte.matches("[a-zA-Z]+")) {
                    contadorPalabras++;
                } else {
                    contadorCompuestas++;
                }
            }
            
            // Formatear la salida
            String salida = "";
            if (contadorEnteros > 0) {
                salida += contadorEnteros + " - > ENTERO";
                if (contadorEnteros > 1) salida += "s";
                salida += "   ";
            }
            if (contadorPalabras > 0) {
                salida += contadorPalabras + " - > PALABRA";
                if (contadorPalabras > 1) salida += "s";
                salida += "   ";
            }
            if (contadorCompuestas > 0) {
                salida += contadorCompuestas + " - > COMPUESTA";
                if (contadorCompuestas > 1) salida += "s";
            }
            
            // Mostrar el resultado
            System.out.println(salida.trim());
            
            // Preguntar si se desea ingresar otra cadena
            System.out.println("¿QUIERES INGRESAR UNA NUEVA CADENA? Selecciona - >(s/n):");
            opcion = scanner.nextLine().toLowerCase();
        } while (opcion.equals("s"));
        
        scanner.close();
    }
}
    
