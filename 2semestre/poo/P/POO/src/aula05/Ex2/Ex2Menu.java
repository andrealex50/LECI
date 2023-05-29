package aula05.Ex2;

import java.util.Scanner;
import aula05.Ex1.DateYMD;

public class Ex2Menu {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int escolha, weekday, month, dayEvent, monthEvent;
        int year = 0;
        Ex2 date = null;
        do {
            System.out.print("Calendar operations:\n1 - create new calendar\n2 - print calendar month\n3 - print calendar\n4 - add event\n5 - remove event\n0 - exit\n>> ");
            escolha = sc.nextInt();
            switch(escolha) {
                case 1:
                    do {
                        System.out.print("Introduza o ano: ");
                        year = sc.nextInt();
                        System.out.print("Introduza o dia da semana do primeiro dia do ano: ");
                        weekday = sc.nextInt();
                    } while (!Ex2.validYearandWeekday(weekday, year));
                    date = new Ex2(weekday, year);
                    System.out.println();
                    break;
                case 2:   
                    do {
                        System.out.print("Insira mês: ");
                        month = sc.nextInt();
                    } while (month < 0 || month > 12);
                    System.out.printf("%14s %4d\n", date.monthName(month), year);
                    System.out.printf(" Su  Mo  Tu  We  Th  Fr  Sa\n");
                    date.printMonth(month);
                    System.out.println();
                    break;
                case 3:
                    date.printCalendar();
                    System.out.println();
                    break;
                case 4:
                    do {
                        System.out.print("Adicione dia do evento: ");
                        dayEvent = sc.nextInt();
                        System.out.print("Adicione mês do evento: ");
                        monthEvent = sc.nextInt();
                    } while (!DateYMD.valid(dayEvent, monthEvent, year));
                    date.addEvent(dayEvent, monthEvent);
                    System.out.println("Evento adicionado.\n");
                    break;
                case 5:
                    do {
                        System.out.print("Adicione dia do evento: ");
                        dayEvent = sc.nextInt();
                        System.out.print("Adicione mês do evento: ");
                        monthEvent = sc.nextInt();
                    } while (!DateYMD.valid(dayEvent, monthEvent, year));
                    date.removeEvent(dayEvent, monthEvent);
                    System.out.println("Evento removido.\n");
                    break;
                case 0:
                    break;
                default:
                    System.out.println("Valor inválido!");
                    break;
            }
        } while (escolha != 0);
        sc.close();
    }
    
}
