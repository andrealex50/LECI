package aula07.Ex2;
import java.util.Scanner;

public class DateYMD extends Date implements Comparable<DateYMD>{
    private int day, month, year;
    static Scanner sc = new Scanner(System.in);
     

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

    @Override
    public int compareTo(DateYMD other) {
        if (this.year != other.year) {
            return this.year - other.year;
        } else if (this.month != other.month) {
            return this.month - other.month;
        } else {
            return this.day - other.day;
        }
    }
    
}
