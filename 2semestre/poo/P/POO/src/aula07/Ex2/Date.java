package aula07.Ex2;

public abstract class Date {
    
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

    public abstract void set(int day, int month, int year);
    public abstract int getDay();
    public abstract int getMonth();
    public abstract int getYear();
    public abstract void incrementDate();
    public abstract void decrementDate();

    public String toString() {
        return getYear() + "-" + getMonth() + "-" + getDay() + "\n";
    }
}
