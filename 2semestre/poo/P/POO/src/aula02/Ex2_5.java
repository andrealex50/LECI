package aula02;
import java.util.Scanner;

public class Ex2_5 {
    public static void main(String[] args) {
        double v1, d1, v2, d2, velmediafinal;
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduz o valor da velocidade no primeiro trajeto: ");
        v1 = sc.nextDouble();
        while (v1 < 0) {
            System.out.print("Valor inválido! Introduz de novo: ");
            v1 = sc.nextDouble();
        }

        System.out.print("Introduz o valor da distância percorrida no primeiro trajeto: ");
        d1 = sc.nextDouble();
        while (d1 < 0) {
            System.out.print("Valor inválido! Introduz de novo: ");
            d1 = sc.nextDouble();
        }

        System.out.print("Introduz o valor da velocidade no segundo trajeto: ");
        v2 = sc.nextDouble();
        while (v2 < 0) {
            System.out.print("Valor inválido! Introduz de novo: ");
            v2 = sc.nextDouble();
        }

        System.out.print("Introduz o valor da distância percorrida no segundo trajeto: ");
        d2 = sc.nextDouble();
        while (d2 < 0) {
            System.out.print("Valor inválido! Introduz de novo: ");
            d2 = sc.nextDouble();
        }
        velmediafinal = (d1+d2)/((d2/v2)+(d1/v1));
        System.out.println("A velocidade média final é de: " + velmediafinal);
        sc.close();
    }
    
}
