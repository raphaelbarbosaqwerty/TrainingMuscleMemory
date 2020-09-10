package br.com.raphaelqwerty.bookstore;

import java.util.ArrayList;
import java.util.List;

import br.com.raphaelqwerty.bookstore.products.Product;

public class ShoppingCart {

    private double total;
    private List<Product> products;


    public ShoppingCart() {
        this.products = new ArrayList<Product>();
    }

    public void addToCart(Product product) {
        this.products.add(product);
    }

    public void remove(int position) {
        this.products.remove(position);
    }

    public double getTotal() {
        return total;
    }

    public List<Product> getProducts() {
        return products;
    }

    

}