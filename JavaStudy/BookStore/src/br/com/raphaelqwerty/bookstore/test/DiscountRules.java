package br.com.raphaelqwerty.bookstore.test;

import br.com.raphaelqwerty.bookstore.products.*;
import br.com.raphaelqwerty.bookstore.*;

public class DiscountRules {

    public static void main(String[] args) {
        
        Author author = new Author();
        author.setName("Rodrigo Turini");

        Book book = new PhysicalBook(author);
        book.setValue(59.90);

        System.out.println("Value: " + book.getValue());

        if (!book.applyDiscount(0.1)) {
            System.out.println("The discount can't be bigger than 30%");
        } else {
            System.out.println("Value with discount: "+ book.getValue());
        }

        Ebook ebook = new Ebook(author);
        ebook.setValue(29.90);

        if (!ebook.applyDiscount(0.15)) {
            System.out.println("The discount can't be bigger than 15%");
        } else {
            System.out.println("The ebook value with discount: " + ebook.getValue());
        }

        Book miniBook = new MiniBook(author);
        miniBook.setValue(39.90);

        if (!book.applyDiscount(0.3)) {
            System.out.println("The discount can't be bigger than 30%");
        } else {
            System.out.println("Value with discount: "+ book.getValue());
        }
    }
}