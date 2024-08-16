import 'package:beatnik/features/authentication/screens/Register/register.dart';
import 'package:beatnik/features/authentication/screens/password_configurations/forget_password.dart';
import 'package:beatnik/navigation_menu.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Login_Form extends StatelessWidget {
  const Login_Form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Form(
        child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: BeatnikSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email), labelText: BeatnikTexts.email),
          ),
          const SizedBox(
            height: BeatnikSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: BeatnikTexts.password,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                    right: 8.0), // Increased distance from left
                child: FaIcon(
                  FontAwesomeIcons.eye,
                  size: 20, // Reduced icon size
                ),
              ),
              suffixIconConstraints: BoxConstraints(
                minHeight: 24,
                minWidth: 24,
              ),
            ),
          ),
          const SizedBox(
            height: BeatnikSizes.spaceBtwInputFields,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text(BeatnikTexts.rememberMe)
              ]),
              TextButton(
                  onPressed: () {
                    Get.to(() => const ForgetPasswordScreen());
                  },
                  child: const Text(BeatnikTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: BeatnikSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(()=> const NavigationMenu()),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: BeatnikColors.grey),
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
                child: const Text(BeatnikTexts.signIn)),
          ),
          const SizedBox(
            height: BeatnikSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(() => const RegisterScreen());
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: BeatnikColors.grey),
                foregroundColor:
                dark ? BeatnikColors.white : BeatnikColors.black,// Set the border color to grey
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8.0), // Adjusts the corner radius (optional)
                 // Removes any border
                ),
              ),
              child: const Text(BeatnikTexts.createAccount),
            ),
          )
        ],
      ),
    ));
  }
}
