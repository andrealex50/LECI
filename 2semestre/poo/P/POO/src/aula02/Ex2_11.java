package aula02;
import java.util.Scanner;

public class Ex2_11 {
    public static void main(String[] args) {
        int valor;
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza valor inteiro entre 0 e 50: ");
        valor = sc.nextInt();
        Validacao(valor);
        sc.close();
    }
    private static void Validacao(int valor) {
        Scanner sc = new Scanner(System.in);
        while (valor>50 | valor<0) {   
            System.out.print("Valor fora do intervalo, introduza outro: ");
            valor = sc.nextInt();
        }
        sc.close();
    }
    
}
