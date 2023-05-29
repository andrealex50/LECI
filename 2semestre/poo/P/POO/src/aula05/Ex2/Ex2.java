package aula05.Ex2;
import aula05.Ex1.DateYMD;

import java.util.Scanner;

public class Ex2 {
    int year, weekday, month, dayEvent, monthEvent;
    DateYMD dateEvent = null;
    int numeroeventos = 0;
    Scanner sc = new Scanner(System.in);

    public Ex2(int weekday, int year) {
        this.weekday = weekday;
        this.year = year;
    }

    public int year() {
        return year;
    }

    public int firstWeekdayOfYear() {
        return weekday;
    }

    public static boolean validYearandWeekday(int weekday, int year) {
        if (weekday < 1 || weekday > 7 || year < 0) {
            return false;
        }
        return true;
    }

    public int firstWeekdayOfMonth(int month) {
        int[] monthDays = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        if (month == 2 && leapYear(year)) {
            monthDays[month] = 29;
        }
        int firstDayOfMonth = weekday;
        for (int i = 1; i < month; i++) {
            firstDayOfMonth += monthDays[i];
        }
        return (((weekday - weekday + firstDayOfMonth - 1) % 7 + 7) % 7) - 1;
    }
    
    public static boolean leapYear(int year) {
        return (year%4 == 0 && year%100 != 0) || (year%400 == 0);
    }

    int[][] eventos = new int[100][2];
    
    public void addEvent(int day, int month) {
        eventos[numeroeventos][0] = day;
        eventos[numeroeventos][1] = month;
        numeroeventos++;
    }
    
    public void removeEvent(int day, int month) {
        for (int i = 0; i < numeroeventos; i++) {
            if (eventos[i][0] == day && eventos[i][1] == month) {
                eventos[i][0] = 0;
                eventos[i][1] = 0;
                break;
            }
        }
    }    

    public String monthName(int month) {
        switch (month) {
            case 1:
                return "January";
            case 2:
                return "February";
            case 3:
                return "March";
            case 4:
                return "April";
            case 5:
                return "May";
            case 6:
                return "June";
            case 7:
                return "July";
            case 8:
                return "August";
            case 9:
                return "September";
            case 10:
                return "October";
            case 11:
                return "November";
            case 12:
                return "December";
            default:
                return "Month";
        }
    }
    
    public void printMonth(int month) {
        for (int i = 1; i <= firstWeekdayOfMonth(month) + 1; i++) {
            if (firstWeekdayOfMonth(month) + 1 == 7) {
                break;
            } else {
                System.out.print("    ");
            }
        }
    
        for (int day = 1; day <= DateYMD.monthDays(month, year); day++) {
            String prefix = " ";
            for (int j = 0; j <= numeroeventos; j++) {
                if (eventos[j][0] == day && eventos[j][1] == month) {
                    prefix = "*";
                    break;
                }
            }
            if (day < 10) {
                if (prefix == "*") {
                    System.out.print(" " + prefix);
                } else {
                    System.out.print(prefix + " ");    
                }
            } else {
                System.out.print(prefix);
            }
            System.out.print(day + " ");
            if ((day + firstWeekdayOfMonth(month) + 1) % 7 == 0 || day == DateYMD.monthDays(month, year)) {
                System.out.println();
            }
        }
    }
    

    public void printCalendar() {
        for (int i = 1; i <= 12; i++) {
            System.out.printf("%14s %4d\n", monthName(i), year);
            System.out.printf(" Su  Mo  Tu  We  Th  Fr  Sa\n");
            printMonth(i);
            System.out.println();
        }
    }
    
}
