import 'package:beatnik/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BeatnikShadow {
  static final verticalProductShadow =BoxShadow(
    color:  BeatnikColors.darkGrey.withOpacity(0.7),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 0)
  );

  static final horizontalProductShadow =BoxShadow(
    color:  BeatnikColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 0)
  );
}