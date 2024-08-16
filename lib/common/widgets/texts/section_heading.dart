import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeatnikSectionHeading extends StatelessWidget {
  const BeatnikSectionHeading({
    super.key,
    this.buttonTitle = 'View All',
    this.textColor,
    this.showActionButton = false,
    required this.title,
    this.onPressed,
  });
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}