import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../utils/constants/image_strings.dart';

class Login_Header extends StatelessWidget {
  const Login_Header({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 90,
            image: AssetImage(dark
                ? BeatnikImages.lightAppLogo
                : BeatnikImages.darkAppLogo)),
        const SizedBox(
            height: BeatnikSizes.spaceBtwSections), // Increased gap
        Text(BeatnikTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: BeatnikSizes.sm,
        ),
        Text(BeatnikTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}