package aula03;
import java.util.Scanner;

public class Ex3_2 {
    public static void main(String[] args) {
        double investido, juromensal;
        Scanner sc = new Scanner(System.in);

        do {
            System.out.print("Insira o montante investido (positivo e múltiplo de 1000): ");
            investido = sc.nextInt();
        } while (investido%1000 != 0 || investido<0);

        do {
            System.out.print("Insira a taxa de juro mensal (entre 0% e 5%): ");
            juromensal = sc.nextInt();
        } while (juromensal<0 || juromensal>5);

        juromensal = juromensal / 100;
        for (int i = 1; i <= 12; i++ ) {
            investido += investido * juromensal;
            System.out.printf("O valor investido no " + i + " mês foi de: %6.3f \n", investido);
        } 

        sc.close();
    }
}
