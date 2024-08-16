
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_funtions.dart';

class BeatnikSearchContainer extends StatelessWidget {
  const BeatnikSearchContainer({
    super.key, required this.text, this.icon= CupertinoIcons.search, this.showBackground = true,  this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {

    final dark = BeatnikHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric( horizontal:  BeatnikSizes.defaultSpace),
      child: Container(
        width: BeatnikDeviceUtility.getScreenWidth(context),
        padding: EdgeInsets.all(BeatnikSizes.md),
        decoration: BoxDecoration(
            color: showBackground ? dark ? BeatnikColors.dark: BeatnikColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(BeatnikSizes.cardRadiuslg),
            border: showBorder ? Border.all(color: BeatnikColors.grey) : null
        ),
        child: Row(
          children: [
            Icon(icon, color: BeatnikColors.grey),
            const SizedBox(width: BeatnikSizes.spaceBtwItems),
            Text('Search in Store', style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}