import 'package:beatnik/features/authentication/screens/Login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  // Singleton instance
  static OnBoardingController get instance => Get.find();

  // Page index observable
  final pageController = PageController();
  Rx<int> _currentPageIndex = 0.obs;

  // Method to update the page indicator
  void updatePageIndicator(int index) {
    _currentPageIndex.value = index;
  }

  // Method to handle dot navigation click
  void dotNavigationClick(int index) {
    _currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Method to navigate to the next page
  void nextPage() {
    if (_currentPageIndex.value == 2) {
      // Navigate to LoginScreen and remove all previous routes
      Get.offAll(() => LoginScreen());
    } else {
      double page = _currentPageIndex.value + 1;
      pageController.jumpToPage(page.toInt());
    }
  }

  // Method to skip the onboarding process
  void skipPage() {
    _currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
