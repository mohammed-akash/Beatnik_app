import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
class BeatnikHelperFunctions {
  // Returns the corresponding Color based on the provided string value
  static Color getColor(String value) {
    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'grey':
        return Colors.grey;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'pink':
        return Colors.pink;
      case 'brown':
        return Colors.brown;
      case 'indigo':
        return Colors.indigo;
      case 'purple':
        return Colors.purple;
      case 'teal':
        return Colors.teal;
      default:
        return Colors.amber; // Default color if no match is found
    }
  }

  // Displays a SnackBar with the provided message
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  // Shows an AlertDialog with the provided title and message
  static void showAlert(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Navigates to a different screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  // Truncates the text if it exceeds the maxLength and adds an ellipsis
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  // Checks if the current theme is dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Returns the screen size
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // Returns the screen height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Returns the screen width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  // Returns a formatted date string
  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  // Removes duplicate elements from a list
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  // Wraps widgets in rows with a specified row size
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i,
          i + rowSize > widgets.length ? widgets.length : i + rowSize
      );
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
