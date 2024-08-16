import 'package:beatnik/features/authentication/screens/Register/verify_email.dart';
import 'package:beatnik/features/authentication/screens/Register/widgets/TermAndConditionCheckbox.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeatnikSignUpForm extends StatelessWidget {
  const BeatnikSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: BeatnikTexts.firstName,
                  border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  //,
                  prefixIcon: Icon(Icons.person)),
            )),
            const SizedBox(width: BeatnikSizes.spaceBtwInputFields),
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: BeatnikTexts.lastName,
                  prefixIcon: Icon(Icons.person)),
            )),
          ],
        ),
        const SizedBox(height: BeatnikSizes.spaceBtwInputFields),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: BeatnikTexts.username,
              prefixIcon: Icon(Icons.person_add_alt_1_outlined)),
        ),
        const SizedBox(height: BeatnikSizes.spaceBtwInputFields),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: BeatnikTexts.email, prefixIcon: Icon(Icons.email)),
        ),
        const SizedBox(height: BeatnikSizes.spaceBtwInputFields),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: BeatnikTexts.phoneNo, prefixIcon: Icon(Icons.phone)),
        ),
        const SizedBox(height: BeatnikSizes.spaceBtwInputFields),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: BeatnikTexts.password, prefixIcon: Icon(Icons.lock)),
        ),
        const SizedBox(height: BeatnikSizes.spaceBtwInputFields),
        const BeatnikTermAndConditionCheckbox(),
        const SizedBox(
          height: BeatnikSizes.spaceBtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmail()),
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
              child: const Text(BeatnikTexts.createAccount)),
        ),
      ],
    ));
  }
}
