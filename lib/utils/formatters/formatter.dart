import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class BeatnikFormatter{
  static String formatDate(DateTime ? date){
    date ??= DateTime.now();
    return DateFormat('dd-MM-YYYY').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en-US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      // Assuming the 11-digit format might include a country code, e.g., 1-234-567-8900
      return '${phoneNumber.substring(0, 1)} (${phoneNumber.substring(1, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}';
    }

    // Add more custom phone number formatting logic for different formats if needed
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;

      // If the country code is +1 (USA/Canada), the first group should be 3 digits
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      if (end > digitsOnly.length) {
        end = digitsOnly.length;
      }

      formattedNumber.write(digitsOnly.substring(i, end));

      // Add a space between groups
      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }

      i = end;
    }

    return formattedNumber.toString();
  }
}