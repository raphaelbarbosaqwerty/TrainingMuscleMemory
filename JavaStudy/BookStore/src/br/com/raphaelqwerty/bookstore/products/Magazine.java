package br.com.raphaelqwerty.bookstore.products;

import br.com.raphaelqwerty.bookstore.*;

public class Magazine implements Product, Promotional {

    private String name;
    private String description;
    private double value;
    private Publisher publisher;

    public Magazine(Publisher publisher) {
        this.publisher = publisher;
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

    public double getValue() {
        return this.value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public boolean applyDiscount(double percentage) {
        if (percentage > 0.1) {
            return false;
        }

        double discount = getValue() * percentage;
        setValue(getValue() - discount);
        return true;
    }

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