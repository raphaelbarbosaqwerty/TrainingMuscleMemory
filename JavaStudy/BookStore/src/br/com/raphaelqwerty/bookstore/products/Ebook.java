package br.com.raphaelqwerty.bookstore.products;

import br.com.raphaelqwerty.bookstore.*;


public class Ebook extends Book implements Promotional {

    private String waterMark;

    public Ebook(Author author) {
        super(author);
    }

    @Override
    public boolean applyDiscount(double percentage) {
        if (percentage> 0.15) {
            return false;
        }
        double discount = getValue() * percentage;
        setValue(getValue() - discount);
        System.out.println("Applying Ebook discount");
        return true;
    }

    public void setWaterMark(String waterMark) {
        this.waterMark = waterMark;
    }

    public String getWaterMark() {
        return waterMark;
    }

    @Override
    public String toString() {
        return "I'm a Ebook";
    }
    
}