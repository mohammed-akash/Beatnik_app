import 'package:beatnik/features/shop/screens/home/home.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? BeatnikColors.black : BeatnikColors.white,
          indicatorColor: dark
              ? BeatnikColors.white.withOpacity(0.1)
              : BeatnikColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.compass), label: 'Explore'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.search), label: 'Search'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.heart), label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.person), label: 'Profile')
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  // Reactive variable to keep track of the selected index
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.purple,
    ),
  ];
}
