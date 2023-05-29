package aula05.Ex1;
import java.util.Scanner;

public class DateYMD {
    private int day, month, year;
    static Scanner sc = new Scanner(System.in);
     
    public static boolean validMonth(int month) {
        if (month < 1 || month > 12) {
            return false;
        }
        return true;
    }

    public static int monthDays(int month, int year) {
        switch (month) {
            case 4: 
            case 6: 
            case 9: 
            case 11:
                return 30;
            case 1:
            case 3: 
            case 5: 
            case 7: 
            case 8:
            case 10: 
            case 12:
                return 31;
            case 2:
                if (leapYear(year)) {
                    return 29;
                }
                else {
                    return 28;
                }
            default:
                return 0;
        } 
    }

    public static boolean leapYear(int year) {
        return (year%4 == 0 && year%100 != 0) || (year%400 == 0);
    }

    public static boolean valid(int day, int month, int year) {
        if (year < 0 || !validMonth(month) || day > monthDays(month, year) || day < 1) {
            return false;
        }
        return true;
    }

    public int getDay() {
        return day;
    }
    
    public int getMonth() {
        return month;
    }
    
    public int getYear() {
        return year;
    }
    public DateYMD(int day, int month, int year) {
        if (valid(day, month, year)) {
            this.day = day;
            this.month = month;
            this.year = year;    
        }
    }
    

    public void set(int day, int month, int year) {
		if (valid(day, month, year)) {
			this.day = day;
			this.month = month;
			this.year = year;
		} else {
			System.out.println("Invalid date");
		}
	}

    public String toString() {
        return year + "-" + month + "-" + day + "\n";
    }
    public void showCurrent(int day, int month, int year) {
        System.out.println(toString());
    }

    public void incrementDate() {
        if (this.month == 12 && this.day == 31) {
            this.day = 1;
            this.month = 1;
            this.year ++;
        }
        if (this.day == monthDays(month, year)) {
            this.month ++;
            this.day = 1;
        }
        else {
            this.day ++;
        }
    }
    
    public void decrementDate() {
        if (this.day == 1) {
            if (this.month == 1){
                this.day = 31;
                this.month = 12;
                this.year --;    
            }
            else {
                this.day = monthDays(month-1, year);
            }
        }
        else {
            this.day --;
        }
        
    }

    public void addDays(int days) {
        for (int i = 0; i < days; i++)
            this.incrementDate();
    }
}
