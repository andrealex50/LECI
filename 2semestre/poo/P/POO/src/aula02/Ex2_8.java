package aula02;
import java.util.Scanner;
import java.lang.Math;

public class Ex2_8 {
    public static void main(String[] args) {
        double cata, catb, hipc;
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduz o valor do cateto A: ");
        cata = sc.nextDouble();
        while (cata < 0) {
            System.out.print("Valor inválido! Introduz um valor positivo: ");
            cata = sc.nextDouble();
        }
        System.out.print("Introduz o valor do cateto B: ");
        catb = sc.nextDouble();
        while (catb < 0) {
            System.out.print("Valor inválido! Introduz um valor positivo: ");
            catb = sc.nextDouble();
        }
        hipc = Math.sqrt(cata*cata + catb*catb);
        System.out.println("O valor da hipotenusa é: " + hipc);
        sc.close();
    }
}
