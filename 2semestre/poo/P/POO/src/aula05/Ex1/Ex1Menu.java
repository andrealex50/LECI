package aula05.Ex1;
import java.util.Scanner;

public class Ex1Menu {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        DateYMD date = null;
        int day, month, year;
        int escolha;
        do {
            System.out.print("Date operations:\n1 - create new date \n2 - show current date \n3 - increment date \n4 - decrement date \n0 - exit \n>> ");
            escolha = sc.nextInt(); 
            switch (escolha) {
                case 1:
                    do {
                        System.out.print("Introduza o dia: ");
                        day = sc.nextInt();
                        System.out.print("Introduza o mês: ");
                        month = sc.nextInt();
                        System.out.print("Introduza o ano: ");
                        year = sc.nextInt();
                    } while (!DateYMD.valid(day, month, year));
                    date = new DateYMD(day, month, year);
                    break;
                case 2:
                    if (date != null) {
                        System.out.print("Data atual: " + date.toString());    
                    }
                    else {
                        System.out.println("Cria uma data primeiro!");
                    }
                    break;
                case 3:
                    if (date != null) {
                        date.incrementDate();
                        System.out.print("Data nova: " + date.toString()); 
                    }
                    else {
                        System.out.println("Cria uma data primeiro!");
                    }
                    break;
                case 4:
                    if (date != null) {
                        date.decrementDate();
                        System.out.print("Data nova: " + date.toString());
                    }
                    else {
                        System.out.println("Cria uma data primeiro!");
                    }
                    break;
                case 0:
                    break;
                default:
                    System.out.println("Opção inválida!");
                    break;
            }   
            System.out.println();
        } while (escolha != 0);
        sc.close();

        
    }
}
