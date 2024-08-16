import 'package:beatnik/features/authentication/controllers/controller.onboarding/OnBoarding_Controller.dart';
import 'package:beatnik/utils/device/device_utility.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    final dark = BeatnikHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: BeatnikDeviceUtility.getBottomNavigationBarHeight() + 25,
        left: BeatnikSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? BeatnikColors.light : BeatnikColors.dark,
                dotHeight: 6)));
  }
}