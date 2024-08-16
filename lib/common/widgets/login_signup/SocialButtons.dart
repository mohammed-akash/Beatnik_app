import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/image_strings.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BeatnikColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            iconSize: BeatnikSizes.iconLg, // Set the icon size
            // Remove padding around the icon
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100), // Ensure the image fits within the circular button
              child: Image.asset(
                BeatnikImages.google,
                height: BeatnikSizes.iconLg,
                width: BeatnikSizes.iconLg,
                fit: BoxFit.cover, // Ensure the image covers the entire area
              ),
            ),
          ),
        ),
        const SizedBox(
          width: BeatnikSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BeatnikColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            iconSize: BeatnikSizes.iconLg, // Set the icon size
            // Remove padding around the icon
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100), // Ensure the image fits within the circular button
              child: Image.asset(
                BeatnikImages.facebook,
                height: BeatnikSizes.iconLg,
                width: BeatnikSizes.iconLg,
                fit: BoxFit.cover, // Ensure the image covers the entire area
              ),
            ),
          ),
        )


      ],
    );
  }
}