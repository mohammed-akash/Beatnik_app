import 'package:beatnik/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class BeatnikCartIcon extends StatelessWidget {
  const BeatnikCartIcon({
    super.key, required this.onPressed, this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = BeatnikHelperFunctions.isDarkMode(context);
    return Stack(children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.bag,
            color: iconColor,
          )),
      Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: dark ? Colors.white : BeatnikColors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(
                    color: dark ? Colors.black : BeatnikColors.white,
                    fontSizeFactor: 0.8),
              ),
            ),
          ))
    ]);
  }
}
