import 'package:beatnik/common/widgets/login_signup/FormDivider.dart';
import 'package:beatnik/common/widgets/login_signup/SocialButtons.dart';
import 'package:beatnik/features/authentication/screens/Register/widgets/BeatnikSignUpForm.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
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
                      BeatnikTexts.signUpTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: BeatnikSizes.spaceBtwSections),
                    const BeatnikSignUpForm(),
                    const SizedBox(
                      height: BeatnikSizes.spaceBtwSections,
                    ),
                    FormDivider(dark: dark, title: BeatnikTexts.orSignUpWith),
                    const SizedBox(
                      height: BeatnikSizes.spaceBtwSections,
                    ),
                    const SocialButton()
                  ])),
        ));
  }
}

