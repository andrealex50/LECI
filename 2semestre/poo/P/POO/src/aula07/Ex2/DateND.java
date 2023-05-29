package aula07.Ex2;

public class DateND extends Date {
    
    private int daysSince2000;
    
    public DateND(int day, int month, int year) {
        set(day, month, year);
    }

    public void set(int day, int month, int year) {
        if (valid(day, month, year)) {
            int totalDays = 0;
            for (int y = 2000; y < year; y++) {
                if (leapYear(y)) {
                    totalDays += 366;
                } else {
                    totalDays += 365;
                }                  
            }
            for (int m = 1; m < month; m++) {
                totalDays += monthDays(m, year);
            }
            totalDays += day - 1;
            this.daysSince2000 = totalDays;
        }
    }

    public int getDay() {
        incrementDate();
        int day = daysSince2000 + 1 - (365*30 + 8); 
        decrementDate();
        return day;
    }

    public int getMonth() {
        incrementDate();
        int days = daysSince2000 + 1 - (365*30 + 8); 
        int month = 1;
        while (days > monthDays(month, getYear())) {
            days -= monthDays(month, getYear());
            month++;
        }
        decrementDate();
        return month;
    }

    public int getYear() {
        incrementDate();
        int days = daysSince2000 + 1 - (365*30 + 8);
        int year = 2000;         
        while (days > 365) {
            if (leapYear(year)) {
                if (days > 366) {
                    days -= 366;
                    year++;
                } else {
                    break;
                }
            } else {
                days -= 365;
                year++;
            }
        }
        decrementDate();
        return year;
    }

    public void incrementDate() {
        daysSince2000++;
    }

    public void decrementDate() {
        daysSince2000--;
    }
}
