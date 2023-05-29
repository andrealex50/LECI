package aula02;
import java.util.Scanner;

public class Ex2_1 {
    public static void main(String[] args) {
        double milhas, quilometros;
        Scanner sc = new Scanner(System.in);
        System.out.print("Insira distância (em valor real) em quilómetros a ser convertida: ");
        quilometros = sc.nextDouble();
        while (quilometros<0) {
            System.out.print("Valor inválido! Introduza um valor positivo: ");
            quilometros = sc.nextDouble();
        }
        milhas = quilometros / 1.609;
        System.out.println("O valor convertido para milhas é " + milhas);
        sc.close();
    }
}
