package br.com.raphaelqwerty.bookstore.test;

import br.com.raphaelqwerty.bookstore.products.*;
import br.com.raphaelqwerty.bookstore.*;

public class BookRegistration {

    public static void main(String[] args) {
        
        Author author = new Author();
        author.setName("Rodrigo Turini");
        author.setEmail("rodrigo.turini@caelum.com.br");
        author.setDocumentation("123.456.789.10");;

        Book book = new PhysicalBook(author);
        book.setName("Java 8");
        book.setDescription("New language resources");
        book.setValue(59.90);
        

        book.showDetails();

        Author otherAuthor = new Author();
        otherAuthor.setName("Jon Erickson");
        otherAuthor.setEmail("jon.erickson@mail.com");
        otherAuthor.setDocumentation("987.456.321.90");

        Book otherBook = new Ebook(otherAuthor);
        otherBook.setName("The art of exploitation");
        otherBook.setDescription("Hacking book");
        otherBook.setValue(59.90);
         
        otherBook.showDetails();

        Ebook ebook = new Ebook(author);
        ebook.setName("Java 8 - Ebook version");
        ebook.setDescription("How to programming with Java");
        ebook.setValue(29.90);

        ebook.showDetails();
    }
}