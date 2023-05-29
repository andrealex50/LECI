package aula08.Ex3.Interfaces;

import aula08.Ex3.Product;

public interface IPurchase {
    void addProduct(Product product, int amount);
    void listProducts();
    double getTotal();
}