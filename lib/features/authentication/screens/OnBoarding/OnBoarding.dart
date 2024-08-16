import 'package:beatnik/features/authentication/controllers/controller.onboarding/OnBoarding_Controller.dart';
import 'package:beatnik/features/authentication/screens/OnBoarding/Widgets/onboarding_page.dart';
import 'package:beatnik/features/authentication/screens/OnBoarding/Widgets/onboarding_skip.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/image_strings.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/device/device_utility.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Widgets/OnBoarding_Navigation.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final controller = Get.put(OnBoardingController());
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: controller.pageController,
        onPageChanged: controller.updatePageIndicator,
        children: [
          // Page 1
          OnBoardingPage(
            image: BeatnikImages.onBoardingImage1,
            title: BeatnikTexts.onBoardingTitle1,
            subTitle: BeatnikTexts.onBoardingSubTitle1,
          ),
          OnBoardingPage(
            image: BeatnikImages.onBoardingImage2,
            title: BeatnikTexts.onBoardingTitle2,
            subTitle: BeatnikTexts.onBoardingSubTitle2,
          ),
          OnBoardingPage(
            image: BeatnikImages.onBoardingImage3,
            title: BeatnikTexts.onBoardingTitle3,
            subTitle: BeatnikTexts.onBoardingSubTitle3,
          ),
          // Add more pages here if needed
        ],
      ),
      const OnBoardingSkip(),
      const OnBoardingNavigation(),
      OnBoardingNextButton()
    ]));
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: BeatnikDeviceUtility.getBottomNavigationBarHeight(),
      right: BeatnikSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? BeatnikColors.primary : Colors.black,
          side: BorderSide.none, // Remove border color
        ),
        child: const Icon(Icons.chevron_right),
      ),
    );
  }
}

