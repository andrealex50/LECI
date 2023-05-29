package aula02;
import java.util.Scanner;

public class Ex2_6 {
    public static void main(String[] args) {
        int totalsegundos, totalminutos, segundos, minutos, horas;
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduz valor em segundos: ");
        totalsegundos = sc.nextInt();
        while (totalsegundos < 0) {
            System.out.print("Valor inválido! Introduza um valor positivo: ");
            totalsegundos = sc.nextInt();
        }
        segundos = totalsegundos % 60;
        totalminutos = totalsegundos / 60;
        minutos = totalminutos % 60;
        horas = totalminutos / 60;
        System.out.println(horas + ":" + minutos + ":" + segundos);
        sc.close();
    }
}
