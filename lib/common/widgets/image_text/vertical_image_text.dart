import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_funtions.dart';

class BeatnikVerticalImage extends StatelessWidget {
  const BeatnikVerticalImage({
    super.key,
    required this.image,
    required this.title,
    this.textColor = BeatnikColors.white,
    this.backgroundColor= BeatnikColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BeatnikSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(BeatnikSizes.sm),
                decoration: BoxDecoration(
                    color: backgroundColor ?? (dark ? BeatnikColors.black: BeatnikColors.white),
                    borderRadius: BorderRadius.circular(56)),
                child: Center(
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: BeatnikColors.dark,
                  ),
                )),
            const SizedBox(
              height: BeatnikSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: BeatnikColors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
