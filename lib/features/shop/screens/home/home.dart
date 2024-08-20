import 'package:beatnik/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:beatnik/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:beatnik/common/widgets/image_text/vertical_image_text.dart';
import 'package:beatnik/common/widgets/images/beatnik_rounded_image.dart';
import 'package:beatnik/common/widgets/products/cards/product_card_vertical.dart';
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
              child: BeatnikPromoSlider(
                banners: [
                  BeatnikImages.promoBanner1,
                  BeatnikImages.promoBanner2,
                  BeatnikImages.promoBanner3,
                  BeatnikImages.promoBanner2
                ],
              )),
          const SizedBox(height: BeatnikSizes.spaceBtwItems),
          Padding(
            padding: const EdgeInsets.all(BeatnikSizes.defaultSpace),
            child: BeatnikSectionHeading(
              title: 'Top Products',
              textColor: BeatnikColors.black,
              showActionButton: true,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(BeatnikSizes.defaultSpace),
            child: GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 350,
                    mainAxisSpacing: BeatnikSizes.gridViewSpacing,
                    crossAxisSpacing: BeatnikSizes.gridViewSpacing),
                itemBuilder: (_, index) => const ProductCardVertical(
                      imageUrl: BeatnikImages.productImage1,
                      name: 'Beatnik Black Top & Pants Schiffli Womens Coords',
                      brand: 'Beatnik',
                      price: 5499.00,
                      originalPrice: 5499.00,
                      discount: 499.00,
                      discountLabel: '25%',
                    )),
          ),
          const SizedBox(height: BeatnikSizes.spaceBtwItems),
        ],
      ),
    ));
  }
}
