package aula10.Ex1;
import java.util.HashMap;
import java.util.Map;

public class BookStore {
    private Map<String, Book> books;

    public BookStore() {
        books = new HashMap<>();
    }

    public void addBook(String genre, Book book) {
        books.put(genre, book);
    }
    public void removeBook(String genre) {
        books.remove(genre);
    }
    public void updateBook(String genre, Book book) {
        books.replace(genre, book);
    }

    public void listAll() {
        for (String genre : books.keySet()) {
            System.out.println(genre + "- " + books.get(genre));
        }
    }
    public void listGenres() {
        System.out.println("Géneros- ");
        for (String genre : books.keySet()) {
            System.out.println(genre);
        }
    }
    public void listBooks() {
        System.out.println("Livros- ");
        for (Book book : books.values()) {
            System.out.println(book);
        }
    }
}
