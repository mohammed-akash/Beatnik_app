import 'package:flutter/material.dart';
import 'package:beatnik/utils/constants/image_strings.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:beatnik/utils/device/device_utility.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(BeatnikSizes.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center items vertically
        children: [
          Image(
            width: BeatnikHelperFunctions.screenWidth() *
                0.8, // Set width to 80% of screen width
            height: BeatnikHelperFunctions.screenHeight() *
                0.4, // Set height to 60% of screen height
            image: AssetImage(image),
          ),
          SizedBox(
              height:
              BeatnikSizes.spaceBtwItems), // Space between image and text
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
              height: BeatnikSizes
                  .spaceBtwItems), // Space between title and subtitle
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}