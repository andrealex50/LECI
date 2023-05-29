package aula02;
import java.util.Scanner;

public class Ex2_3 {
    public static void main(String[] args) {
        double quantagua, tempfinal, tempinicial, quantidadeenergia;
        Scanner sc = new Scanner(System.in);
        System.out.print("Insira quantidade de água em quilogramas: ");
        quantagua = sc.nextDouble();
        while (quantagua<0) {
            System.out.print("Valor inválido! Introduza um valor positivo: ");
            quantagua = sc.nextDouble();
        }
        System.out.print("Insira temperatura final em Celsius: ");
        tempfinal = sc.nextDouble();
        System.out.print("Insira temperatura inicial em Celsius: ");
        tempinicial = sc.nextDouble();
        quantidadeenergia = quantagua * (tempfinal - tempinicial)*4184;
        System.out.println("A quantidade de energia em Joules é:  " + quantidadeenergia);
        sc.close();
    }
}
