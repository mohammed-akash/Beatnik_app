
import 'package:beatnik/features/authentication/screens/Login/login.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/image_strings.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(BeatnikSizes.defaultSpace),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        image: AssetImage(BeatnikImages.successEmailVerified),
                        width: BeatnikHelperFunctions.screenWidth()
                    ),
                    const SizedBox(height: BeatnikSizes.spaceBtwSections),
                    Text(
                      BeatnikTexts.changeYourPasswordTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: BeatnikSizes.spaceBtwSections),
                    Text(
                      BeatnikTexts.changeYourPasswordSubTitle,
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
                          child: const Text(BeatnikTexts.done)),
                    ),
                    const SizedBox(height: BeatnikSizes.spaceBtwItems),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(BeatnikTexts.resendEmail),
                      ),
                    )

                  ])),
        ));
  }
}
