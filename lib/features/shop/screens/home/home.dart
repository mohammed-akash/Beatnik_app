import 'package:beatnik/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:beatnik/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:beatnik/common/widgets/image_text/vertical_image_text.dart';
import 'package:beatnik/common/widgets/images/beatnik_rounded_image.dart';
import 'package:beatnik/common/widgets/texts/section_heading.dart';
import 'package:beatnik/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:beatnik/features/shop/screens/home/widgets/home_category.dart';
import 'package:beatnik/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/image_strings.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PrimaryHeaderContainer(
            child: Column(
              children: [
                BeatnikHomeAppbar(),
                const SizedBox(height: BeatnikSizes.spaceBtwSections),
                BeatnikSearchContainer(
                  text: 'Search in Store',
                ),
                const SizedBox(height: BeatnikSizes.spaceBtwSections),
                Padding(
                  padding: EdgeInsets.only(left: BeatnikSizes.defaultSpace),
                  child: Column(
                    children: [
                      BeatnikSectionHeading(
                        title: 'Popular Categories',
                        textColor: BeatnikColors.white,
                      ),
                      const SizedBox(height: BeatnikSizes.spaceBtwItems),
                      BeatnikHomeCategory()
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(BeatnikSizes.defaultSpace),
              child: BeatnikPromoSlider(banners: [BeatnikImages.promoBanner1, BeatnikImages.promoBanner2, BeatnikImages.promoBanner3, BeatnikImages.promoBanner2],))
        ],
      ),
    ));
  }
}


