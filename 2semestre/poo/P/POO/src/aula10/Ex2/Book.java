package aula10.Ex2;

public class Book {
    
    private String title, author;
    private int year;
    
    public Book (String title, String author, int year) {
        this.title = title;
        this.author = author;
        this.year = year;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }

    public int getYear() {
        return year;
    }
    public void setYear(int year) {
        if (year > 0) {
            this.year = year;
        }
    }

    public String toString() {
        return "Titulo: " + title + "; Autor: " + author + "; Ano: " + year;
    }


}
