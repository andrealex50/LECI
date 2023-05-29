package aula02;
import java.util.Scanner;

public class Ex2_4 {
    public static void main(String[] args) {
        double investido, juromensal;
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza o valor do montante investido: ");
        investido = sc.nextDouble();
        while (investido<0) {
            System.out.print("Valor inválido! Introduza um valor positivo: ");
            investido = sc.nextDouble();
        }
        System.out.print("Introduza valor da taxa de juro mensal em forma de percentagem: ");
        juromensal = sc.nextDouble();
        while (juromensal<0) {
            System.out.print("Valor inválido! Introduza um valor positivo: ");
            juromensal = sc.nextDouble();
        }
        juromensal = juromensal / 100;
        for (int i = 0; i < 3; i++ ) {
            investido += investido * juromensal;
        }
        System.out.println("O montante ao fim de 3 meses será de: " + investido);
        sc.close();
    }
}
