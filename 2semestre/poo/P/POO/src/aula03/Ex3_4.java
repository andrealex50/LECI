package aula03;
import java.util.Scanner;
import java.lang.Math;

public class Ex3_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double notaP, notaT;
        int NumeroAlunos;

        do {
            System.out.print("Introduza o número de alunos da turma: ");
            NumeroAlunos = sc.nextInt();
        } while (NumeroAlunos <= 0);
        
        System.out.printf("%6s %6s %6s\n", "NotaT", "NotaP", "Pauta");
        double[][] NotasPauta = new double[NumeroAlunos][3];

        for (int i = 0; i < NumeroAlunos; i++) {
            notaT = (Math.random()*(20));
            notaP = (Math.random()*(20));
            NotasPauta[i][0] = notaT;
            NotasPauta[i][1] = notaP;
            NotasPauta[i][2] = CalcularNota(notaP, notaT);
            System.out.printf("%6.1f %6.1f %6.0f\n", notaT, notaP, CalcularNota(notaP, notaT));
        }

        sc.close();
    }

    public static double CalcularNota(double notaP, double notaT) {
        if (notaP < 7.0 || notaT < 7.0) {
            return 66;
        }
        else {
            return Math.round(0.4 * notaT + 0.6 * notaP);
        }
    }
    
}
