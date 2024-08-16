import 'package:beatnik/features/authentication/screens/password_configurations/reset_password.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(BeatnikSizes.defaultSpace),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      BeatnikTexts.forgetPasswordTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: BeatnikSizes.spaceBtwItems),
                    Text(
                      BeatnikTexts.forgetPasswordSubTitle,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(height: BeatnikSizes.spaceBtwSections * 2),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: BeatnikTexts.password,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0), // Increased distance from left
                        ),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 24,
                          minWidth: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: BeatnikSizes.spaceBtwSections),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Get.off(() => const ResetPasswordScreen()),
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
                          child: const Text(BeatnikTexts.submit)),
                    ),

                  ])),
        ));
  }
}
