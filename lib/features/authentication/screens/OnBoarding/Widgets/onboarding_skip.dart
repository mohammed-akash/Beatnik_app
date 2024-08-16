import 'package:beatnik/features/authentication/controllers/controller.onboarding/OnBoarding_Controller.dart';
import 'package:beatnik/features/shop/screens/home/home.dart';
import 'package:beatnik/navigation_menu.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import 'package:get/get.dart';
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: BeatnikDeviceUtility.getAppBarHeight(),
        right: BeatnikSizes.defaultSpace,
        child: TextButton(
          onPressed: () => Get.to(()=> const NavigationMenu()),
          child: const Text('Skip'),
        ));
  }
}