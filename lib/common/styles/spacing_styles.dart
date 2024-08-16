import 'package:beatnik/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BeatnikSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: BeatnikSizes.appBarHeight,
    left: BeatnikSizes.defaultSpace,
    bottom: BeatnikSizes.defaultSpace,
    right: BeatnikSizes.defaultSpace,
  );
}
