package br.com.raphaelqwerty.bookstore.products;

import br.com.raphaelqwerty.bookstore.*;

public class PhysicalBook extends Book implements Promotional {

    public PhysicalBook(Author author) {
        super(author);
    }

    public double getImpressionTax() {
        return this.getValue() * 0.05;
    }

    @Override
    public boolean applyDiscount(double percentage) {
        if (percentage > 0.3) {
            return false;
        }
        double discount = getValue() * percentage;
        setValue(getValue() - discount);
        System.out.println("Applying discount in PhysicalBook");
        return true;
    }
}