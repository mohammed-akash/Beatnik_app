import 'dart:ffi';

import 'package:beatnik/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:beatnik/features/shop/controllers/home_controller.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/images/beatnik_rounded_image.dart';
import '../../../../../utils/constants/image_strings.dart';

class BeatnikPromoSlider extends StatelessWidget {
  const BeatnikPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners
              .map(
                (e) => BeatnikRoundedImage(
                    imageUrl: e, applyImageRadius: true),
              )
              .toList(),
        ),
        const SizedBox(height: BeatnikSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  BeatnikCircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? BeatnikColors.primary
                        : BeatnikColors.grey,
                    margin: EdgeInsets.only(right: 10),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
