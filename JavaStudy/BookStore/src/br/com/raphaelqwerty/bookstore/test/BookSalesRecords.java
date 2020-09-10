package br.com.raphaelqwerty.bookstore.test;

import java.util.List;

import br.com.raphaelqwerty.bookstore.Author;
import br.com.raphaelqwerty.bookstore.ShoppingCart;
import br.com.raphaelqwerty.bookstore.products.Ebook;
import br.com.raphaelqwerty.bookstore.products.PhysicalBook;
import br.com.raphaelqwerty.bookstore.products.Product;

public class BookSalesRecords {

    public static void main(String[] args) {
        
        Author author = new Author();
        author.setName("Mauricio Aniche");

        PhysicalBook physical = new PhysicalBook(author);
        physical.setName("Text-Driven Development");
        physical.setValue(59.90);

        Ebook ebook = new Ebook(author);
        ebook.setName("Text-Driven Development");
        ebook.setValue(29.90);

        ShoppingCart cart = new ShoppingCart();
        cart.addToCart(physical);
        cart.addToCart(ebook);

        List<Product> products = cart.getProducts();

        System.out.println("Total " + cart.getTotal());

        for (Product product : products) {
            System.out.println(product);
        }
        
    }
}