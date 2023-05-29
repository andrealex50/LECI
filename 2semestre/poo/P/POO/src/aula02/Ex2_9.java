package aula02;
import java.util.Scanner;

public class Ex2_9 {
    public static void main(String[] args) {
        int n;
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza o valor N positivo: ");
        n = sc.nextInt();
        for (int i=n; i>=0; i--) {
            if (i%10 == 0) {
                System.out.println();
            }
            if (i==0) {
                System.out.print(i);
            }
            else {
                System.out.print(i + ",");
            }
        }
        sc.close();
    }
}
