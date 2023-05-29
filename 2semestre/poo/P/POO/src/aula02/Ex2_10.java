package aula02;
import java.util.Scanner;

public class Ex2_10 {
    public static void main(String[] args) {
        int n, primeiro, maximo, minimo, total, numerosdeinput;
        double media;
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduz o número a adicionar (Primeiro número adicionado para parar): ");
        n = sc.nextInt();
        primeiro = n;
        minimo = n;
        maximo = n;
        total = n;
        numerosdeinput = 1;
        do {
            System.out.print("Introduz o número a adicionar (Primeiro número adicionado para parar): ");
            n = sc.nextInt();
            total += n;
            numerosdeinput += 1;
            if (n>maximo) {
                maximo = n;
            }
            if (n<minimo) {
                minimo = n;
            }          
        } while (n != primeiro );
        media = (double)(total) / numerosdeinput;
        System.out.println("O máximo foi: " + maximo);
        System.out.println("O minimo foi: " + minimo);
        System.out.println("O total foi: " + total);
        System.out.println("A média foi de: " + media);
        sc.close();
    }
}
