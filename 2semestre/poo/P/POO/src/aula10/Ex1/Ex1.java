package aula10.Ex1;

public class Ex1 {
    
    public static void main(String[] args) {
        BookStore books = new BookStore();

        books.addBook("Crime", new Book("Death on the Nile", "Agatha Christie", 1937));
        books.addBook("Romance", new Book("O Último Desejo", "Andrzej Sapkowski", 1993));
        books.addBook("Fantasia", new Book("Harry Potter e as Reliquias da Morte", "JK Rowling", 1998 ));
        books.addBook("Ciência", new Book("Introdução à Programação usando C", "António Manuel Adrego da Rocha", 2006));
        books.addBook("Romance", new Book("Os Maias", "Eça de Queiroz", 2001));
    
        books.listAll();
        System.out.println();
        books.listGenres();
        System.out.println();
        books.listBooks();
        System.out.println();
        books.removeBook("Fantasia");
        books.listAll();
        System.out.println();
        books.updateBook("Romance", new Book("Memorial do Convento", "José Saramago", 1982));
        books.listAll();
    }
}
