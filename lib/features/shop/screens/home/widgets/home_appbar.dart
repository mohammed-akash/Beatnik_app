import 'package:beatnik/common/widgets/appbar/appbar.dart';
import 'package:beatnik/common/widgets/products/product_cart/cart_menu_icon.dart';
import 'package:beatnik/utils/constants/colors.dart';
import 'package:beatnik/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeatnikHomeAppbar extends StatelessWidget {
  const BeatnikHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BeatnikAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BeatnikTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: BeatnikColors.grey),
          ),
          Text(
            BeatnikTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: BeatnikColors.white),
          ),
        ],
      ),
      actions: [
        BeatnikCartIcon(onPressed: () {  }, iconColor: BeatnikColors.white,)
      ],
    );
  }
}

