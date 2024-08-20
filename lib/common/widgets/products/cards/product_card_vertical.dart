import 'package:beatnik/common/styles/shadows.dart';
import 'package:beatnik/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:beatnik/common/widgets/images/beatnik_rounded_image.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/image_strings.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.brand,
      required this.price,
      required this.originalPrice,
      required this.discount,
      required this.discountLabel});
  final String imageUrl;
  final String name;
  final String brand;
  final double price;
  final double originalPrice;
  final double discount;
  final String discountLabel;
  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 170,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(BeatnikSizes.productImageRadius),
            color: dark ? BeatnikColors.darkGrey : BeatnikColors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                BeatnikRoundedImage(
                  imageUrl: imageUrl,
                  applyImageRadius: true,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: BeatnikSizes.sm, vertical: BeatnikSizes.xs),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                        color: dark ? BeatnikColors.white : BeatnikColors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        brand,
                        style: Theme.of(context).textTheme.bodySmall!.apply(
                            color:
                                dark ? BeatnikColors.grey : BeatnikColors.darkerGrey),
                      ),
                      const SizedBox(
                        width: BeatnikSizes.spaceBtwItems / 4,
                      ),
                      const Icon(
                        CupertinoIcons.checkmark_seal_fill,
                        color: BeatnikColors.primary,
                        size: BeatnikSizes.iconXs,
      
                      )
                    ],
                  ),
      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\₹ ${price}',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .apply(
                                    color: dark
                                        ? BeatnikColors.white
                                        : BeatnikColors.black),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: BeatnikColors.dark,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(BeatnikSizes.cardRadiusMd),
                                bottomRight: Radius.circular(BeatnikSizes.cardRadiusMd)
      
                              )
                            ),
                            child: const SizedBox(
                              width: BeatnikSizes.iconLg,
                              height: BeatnikSizes.iconLg,
                                child:  Center(child: Icon(CupertinoIcons.add, color: BeatnikColors.white))),
                          )
      
                        ],
                      )
      
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
