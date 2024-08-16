import 'package:beatnik/common/widgets/login_signup/FormDivider.dart';
import 'package:beatnik/common/widgets/login_signup/SocialButtons.dart';
import 'package:beatnik/features/authentication/screens/Login/widgets/login_form.dart';
import 'package:beatnik/features/authentication/screens/Login/widgets/login_header.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: BeatnikSizes.appBarHeight,
              left: BeatnikSizes.defaultSpace,
              bottom: BeatnikSizes.defaultSpace,
              right: BeatnikSizes.defaultSpace),
          child: Column(
            children: [

              //Login Form

              Login_Header(dark: dark),


              //Login Form

              Login_Form(),

              //Form Divider

              FormDivider(dark: dark, title:  BeatnikTexts.orSignInWith),

              const SizedBox(height: BeatnikSizes.spaceBtwItems),
              //Footer
              SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}








