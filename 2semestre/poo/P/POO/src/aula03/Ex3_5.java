package aula03;
import java.util.Scanner;

public class Ex3_5 {
    public static void main(String[] args) {
        int month, year, Numberdays, diadasemana;
        String monthName = " ";
        String data;
        String[] dataSeparated;
        Scanner sc = new Scanner(System.in);
        
        do {
            System.out.print("Introduza a data no formato mm/yyyy: ");
            data = sc.next();
            dataSeparated = data.split("/");
            month = Integer.parseInt(dataSeparated[0]);
            year = Integer.parseInt(dataSeparated[1]);
        } while (month < 1 || month > 12 || year <= 0 );
        
        do {
            System.out.print("Dia da Semana em que começa o mês (1 = Segunda, 2 = Terça, 3 = Quarta, 4 = Quinta, 5 = Sexta, 6 = Sábado, 7 = Domingo): ");
            diadasemana = sc.nextInt(); 
        } while (diadasemana < 0 || diadasemana > 7);
      
        switch (month) {
            case 4: 
                monthName = "April";
                Numberdays = 30;
                break;
            case 6: 
                monthName = "June";
                Numberdays = 30;
                break;
            case 9: 
                monthName = "September";
                Numberdays = 30;
                break;
            case 11:
                monthName = "November";
                Numberdays = 30;
                break;
            case 1:
                monthName = "January";
                Numberdays = 31;
                break;
            case 3: 
                monthName = "March";
                Numberdays = 31;
                break;
            case 5: 
                monthName = "May";
                Numberdays = 31;
                break;
            case 7: 
                monthName = "July";
                Numberdays = 31;
                break;
            case 8:
                monthName = "August";
                Numberdays = 31;
                break;
            case 10: 
                monthName = "October";
                Numberdays = 31;
                break;
            case 12:
                monthName = "December";
                Numberdays = 31;
                break;
            case 2:
                monthName = "February";
                if (IsLeapYear(year)) {
                    Numberdays = 29;
                }
                else {
                    Numberdays = 28;
                }
                break;
            default:
                monthName = "Invalid month";
                Numberdays = 0;
                break;
        }     
        
        System.out.printf("%11s %4d\n", monthName, year);
        System.out.printf("Su Mo Tu We Th Fr Sa\n");
        
        for (int i = 1; i <= diadasemana; i++) {            
            if (diadasemana == 7) {
                break;
            }         
            else {
                System.out.print("   ");
            }   
        }

        for (int day = 1; day <= Numberdays; day++) {
            if (day < 10) {
                System.out.print(" ");
            }
            System.out.print(day + " ");
            if ((day + diadasemana) % 7 == 0 || day == Numberdays) {
                System.out.println();
            }
        }        

        sc.close();
    }

    public static boolean IsLeapYear(int year) {
        return (year%4 == 0 && year%100 != 0) || (year%400 == 0);
    } 
    
}
