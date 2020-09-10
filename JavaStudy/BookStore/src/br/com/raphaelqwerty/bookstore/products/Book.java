package br.com.raphaelqwerty.bookstore.products;

//import br.com.raphaelqwerty.bookstore.exception.AuthorNullException;
import br.com.raphaelqwerty.bookstore.*;

public abstract class Book implements Product {
    
    private String name;
    private String description;
    private double value;
    private String isbn;
    private Author author;
    //private double impression;

    public Book(Author author) {
        this();

        this.author = author;
        //this.impression = impression;

    }

    public Book() {

        this.isbn = "000-00-00000-00-0";
    }

    public void showDetails() {
        System.out.println("Showing book details ");
        System.out.println("Name: " + name);
        System.out.println("Description: " +description);
        System.out.println("Value: " + value);
        System.out.println("ISBN:" + isbn);

        if (this.haveAuthor()) {
            author.showDetails();
        }

        System.out.println("-----------------------------");
    }

    public double getValue() {
        return this.value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getIsnb() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    boolean haveAuthor() {
        return this.author != null;
    }

    public abstract boolean applyDiscount(double v);

    @Override
    public int compareTo(Product other) {

        if (this.getValue() < other.getValue()) {
            return -1;
        }

        if (this.getValue() > other.getValue()) {
            return 1;
        }

        return 0;
    }
}