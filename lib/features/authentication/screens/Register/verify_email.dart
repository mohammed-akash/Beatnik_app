import 'package:beatnik/common/widgets/success_screen/success_screen.dart';
import 'package:beatnik/features/authentication/screens/Login/login.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/image_strings.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(BeatnikSizes.defaultSpace),
              child: Column(children: [
                Image(
                  image: AssetImage(BeatnikImages.confirmEmail),
                  width: BeatnikHelperFunctions.screenWidth() * 0.6,
                ),
                Text(
                  BeatnikTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: BeatnikSizes.spaceBtwItems),
                Text(
                  'mohammedakash@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: BeatnikSizes.spaceBtwItems),
                Text(
                  BeatnikTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: BeatnikSizes.spaceBtwSections),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const SuccessScreen()),
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
                ),
                const SizedBox(height: BeatnikSizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => Get.to(() => const VerifyEmail()),
                    child: const Text(BeatnikTexts.resendEmail),
                  ),
                )

              ])),
        ));
  }
}
