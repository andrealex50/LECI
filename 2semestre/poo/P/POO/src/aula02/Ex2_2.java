package aula02;
import java.util.Scanner;
public class Ex2_2 {
    public static void main(String[] args) {
        double far, cel;
        Scanner sc = new Scanner(System.in);
        System.out.print("Insira valor (real) em Celsius: ");
        cel = sc.nextDouble();
        far = 1.8*cel + 32;
        System.out.println("O valor introduzido em Fahrenheit é: " + far);
		sc.close();
    }
}
