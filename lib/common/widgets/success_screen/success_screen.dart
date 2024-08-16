import 'package:beatnik/common/styles/spacing_styles.dart';
import 'package:beatnik/features/authentication/screens/Login/login.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/image_strings.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: BeatnikSpacingStyle.paddingWithAppbarHeight,
          child: Column(children: [
            Image(
                image: AssetImage(BeatnikImages.successEmailVerified),
                width: BeatnikHelperFunctions.screenWidth()),
            const SizedBox(height: BeatnikSizes.spaceBtwSections),
            Text(
              BeatnikTexts.yourAccountCreatedTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: BeatnikSizes.spaceBtwSections),
            Text(
              BeatnikTexts.yourAccountCreatedSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: BeatnikSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: BeatnikColors.white),
                    backgroundColor:
                        dark ? BeatnikColors.white : BeatnikColors.black,
                    foregroundColor:
                        dark ? BeatnikColors.black : BeatnikColors.white,
                    elevation: 0, // Removes the shadow to make it look flatter
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjusts the corner radius (optional)
                      side: BorderSide.none, // Removes any border
                    ),
                  ),
                  child: const Text(BeatnikTexts.bcontinue)),
            )
          ])),
    ));
  }
}
