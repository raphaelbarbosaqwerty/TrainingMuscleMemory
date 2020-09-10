package br.com.raphaelqwerty.bookstore.test;


public class CouponQuery {
    public static void main(String[] args) {
        CouponManagement managment = new CouponManagement();


        Double discount = managment.validateCoupon("CUP33");

        if(discount != null) {
            System.out.println("Coupon valid!");
            System.out.println("Value "+ discount);
        } else {
            System.out.println("Coupon invalid!");
        }
    }
}