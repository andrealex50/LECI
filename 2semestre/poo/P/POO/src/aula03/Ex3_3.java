package aula03;
import java.util.Scanner;
import java.util.Random;

public class Ex3_3 {
    public static void main(String[] args) {
    int randomnumber, numberguess, tentativas;
    Scanner sc = new Scanner(System.in);
    Random rand = new Random();
    randomnumber = rand.nextInt(101);

    do {
        System.out.print("Adivinhe o número entre 1 e 100: ");
        numberguess = sc.nextInt();        
    } while (numberguess > 100 || numberguess < 0);
    tentativas = 0;

    while (numberguess != randomnumber) {
        System.out.println(CheckIfClose(numberguess, randomnumber));
        tentativas += 1;
        System.out.println("Foram feitas " + tentativas + " tentativas. Pretende continuar? Prima (S)im.");
        String resposta = sc.next();

        if (!resposta.equals("S") && !resposta.equals("Sim")) {
            System.exit(0);
        }
        
        do {
            System.out.print("Adivinhe o número entre 1 e 100: ");
            numberguess = sc.nextInt();        
        } while (numberguess > 100 || numberguess < 0);
    } 
    
    System.out.println("Acertaste com "+ tentativas +" tentativas! O número é " + numberguess);
    sc.close();
    }

    public static String CheckIfClose(int numberguess, int randomnumber) {
        if (numberguess > randomnumber) {
            return "Tentativa demasiado alta.";
        }
        if (numberguess < randomnumber) {
            return "Tentativa demasiado baixa.";
        }
        return "Acertaste! O número é " + numberguess;
    }

}

