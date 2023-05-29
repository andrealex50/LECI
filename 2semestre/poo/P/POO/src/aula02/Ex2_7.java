package aula02;
import java.util.Scanner;
import java.lang.Math;

public class Ex2_7 {
    public static void main(String[] args) {
        int xp1, yp1, xp2, yp2;
        double distancia;
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduz a coordenada (real) x do primeiro ponto: ");
        xp1 = sc.nextInt();
        System.out.print("Introduz a coordenada (real) y do primeiro ponto: ");
        yp1 = sc.nextInt();
        System.out.print("Introduz a coordenada (real) x do segundo ponto: ");
        xp2 = sc.nextInt();
        System.out.print("Introduz a coordenada (real) y do segundo ponto: ");
        yp2 = sc.nextInt();
        distancia = Math.sqrt((xp2 - xp1)*(xp2 - xp1) + (yp2 - yp1)*(yp2 - yp1));
        System.out.println("A distância entre os pontos é: " + distancia);
        sc.close();

    }
}
