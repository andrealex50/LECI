package aula10.Ex2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class BookStore {
    private Map<String, ArrayList<Book>> books;

    public BookStore() {
        books = new HashMap<String, ArrayList<Book>>();
    }

    public void addBook(String genre, Book book) {
        if (!books.containsKey(genre)) {
            books.put(genre, new ArrayList<Book>());
        }
        books.get(genre).add(book);
    }
    
    public void removeBook(String genre, Book book) {
        if (books.containsKey(genre)) {
            books.get(genre).remove(book); 
        }
    }    

    public void removeGenre(String genre) {
        books.remove(genre);
    }

    public void updateBook(String genre, Book book) {
        if (books.containsKey(genre)) {
            books.replace(genre, new ArrayList<Book>(Arrays.asList(book)));
        }
    }
    

    public Book getRandomBook(String genre) {
        List<Book> genreBooks = books.get(genre);
        if (genreBooks == null || genreBooks.isEmpty()) {
            return null; 
        }
        int randomIndex = new Random().nextInt(genreBooks.size());
        return genreBooks.get(randomIndex);
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
        for (List<Book> genreBooks : books.values()) {
            for (Book book : genreBooks) {
                System.out.println(book);
            }
        }
    }
    
}
