package br.com.raphaelqwerty.bookstore.test;

import java.util.Map;
import java.util.HashMap;

public class CouponManagement {

    private Map<String, Double> coupons;

    public CouponManagement() {
        
        this.coupons = new HashMap<>();

        coupons.put("CUP33", 3.0);
        coupons.put("CUP66", 6.0);
        coupons.put("CUP99", 9.0);
        coupons.put("CUP42", 42.0);
        coupons.put("CUP2026", 26.0);
        coupons.put("CUP2022", 22.0);
    }

    public Double validateCoupon(String coupon) {
        return this.coupons.get(coupon);
    }
}