package aula04.Ex2;
import java.util.ArrayList;
import java.util.List;

class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

}


class CashRegister {

    
    private List<Product> products;
    private double valorTotal;

    public CashRegister() {
        products = new ArrayList<Product>();
        valorTotal = 0.0;
    }

    public void removeProduct(Product product) {
        valorTotal -= product.getTotalValue();
        products.remove(product);
        
    }

    public void addProduct(Product product) {
        valorTotal += product.getTotalValue();
        products.add(product);
    }

    public List<Product> getProducts() {
        return products;
    }

    public double getTotalValue() {
        return valorTotal;
    }

    public void printFatura() {
        System.out.println("Product          Price    Quantity       Total");
        for (Product product : products) {
            System.out.printf("%-10s %11.2f %11d %11.2f\n", product.getName(), product.getPrice(), product.getQuantity(), product.getTotalValue() );
        }
        System.out.println();
        System.out.printf("Total value: %.2f\n", getTotalValue());
    }
}

public class CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));
        
        
        cr.printFatura();

    }
}