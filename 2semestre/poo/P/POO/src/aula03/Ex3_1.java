package aula03;
import java.util.Scanner;

public class Ex3_1 {
    public static void main(String[] args) {
        int numero, soma;
        Scanner sc = new Scanner(System.in);

        do {
            System.out.print("Insira um número inteiro positivo: ");
            numero = sc.nextInt(); 
        } while (numero < 0);

        soma = 0;
        for (int i = numero; i > 0; i--) {
            if (CheckisPrime(i)) {
                soma += i;
            }
        }
        
        System.out.println("A soma é igual a: " + soma);
        sc.close();
    }

    public static boolean CheckisPrime(int i) {
        if (i <= 1) {
            return false;
        }
        for (int t = 2; t <= i/2; t++) {
            if ((i % t) == 0) {
                return false;
            }
        }
        return true;
    }
}        


