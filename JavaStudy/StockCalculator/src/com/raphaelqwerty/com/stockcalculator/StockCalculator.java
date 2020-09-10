package com.raphaelqwerty.com.stockcalculator;

public class StockCalculator {

    public static void main(String[] args) {

        double sumStock = 0;

        for (int count = 0; count < 35; count ++) {
            sumStock += 59.90;
        }

        System.out.println("The total from stock is "+ sumStock);

        if (sumStock < 150) {
            System.out.println("The stock is to low!");
        } else if (sumStock >= 2000) {
            System.out.println("The stock is to high!");
        } else {
            System.out.println("The stock is good!");
        }
    }
}
