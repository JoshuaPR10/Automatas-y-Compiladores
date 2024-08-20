/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */

package programa1;
import java.util.Scanner;

/**
 *
 * @author Lenovo
 */
public class Programa1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce una cadena de caracteres: ");
        String input = scanner.nextLine();

        if (esNumero(input)) {
            System.out.println("La cadena es un número.");
        } else if (esPalabra(input)) {
            System.out.println("La cadena es una palabra.");
        } else if (esCompuesta(input)) {
            System.out.println("La cadena es compuesta (contiene palabras y números).");
        } else {
            System.out.println("La cadena contiene caracteres especiales o no reconocidos.");
        }

        scanner.close();
    }
    

    // Verifica si la cadena es un número
    public static boolean esNumero(String cadena) {
        return cadena.matches("\\d+");
    }

    // Verifica si la cadena es una palabra (solo letras)
    public static boolean esPalabra(String cadena) {
        return cadena.matches("[a-zA-Z]+");
    }

    // Verifica si la cadena es compuesta (contiene letras y números)
    public static boolean esCompuesta(String cadena) {
        return cadena.matches("[a-zA-Z0-9]+") && !esNumero(cadena) && !esPalabra(cadena);
    }
}