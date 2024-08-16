import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
    required this.title
  });

  final bool dark;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: dark ? BeatnikColors.darkGrey : BeatnikColors.grey,
            thickness: 0.5,
            endIndent: 10, // Space between divider and text
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Expanded(
          child: Divider(
            color: dark ? BeatnikColors.darkGrey : BeatnikColors.grey,
            thickness: 0.5,
            indent: 10, // Space between divider and text
          ),
        ),
      ],
    );
  }
}