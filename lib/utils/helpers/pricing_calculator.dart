import 'package:flutter/material.dart';

class BeatnikPricingCalculator {
  // Calculate the total price including product price, tax, and shipping cost
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate the shipping cost and return it as a string
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate the tax amount and return it as a string
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // Helper method to get the tax rate for a location (implement as needed)
  static double getTaxRateForLocation(String location) {
    // Example logic: return different tax rates based on the location
    if (location == 'NY') {
      return 0.08; // 8% tax rate
    } else if (location == 'CA') {
      return 0.075; // 7.5% tax rate
    } else {
      return 0.05; // Default 5% tax rate
    }
  }

  // Helper method to get the shipping cost for a location (implement as needed)
  static double getShippingCost(String location) {
    // Example logic: return different shipping costs based on the location
    if (location == 'NY') {
      return 10.0; // $10 shipping cost
    } else if (location == 'CA') {
      return 12.0; // $12 shipping cost
    } else {
      return 8.0; // Default $8 shipping cost
    }
  }

  // static double calculateCartTotal(CartModal cart) {
  //   return cart.items.map((item) => item.price ?? 0).fold(0.0, (previousPrice, currentPrice) => previousPrice + currentPrice);
  // }

}
