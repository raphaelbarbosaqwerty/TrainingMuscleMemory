package br.com.raphaelqwerty.bookstore.products;

import br.com.raphaelqwerty.bookstore.*;

public class MiniBook extends Book {

    public MiniBook(Author author) {
        super(author);
    }

    @Override
    public boolean applyDiscount(double percentage) {
        return false;
    }
}