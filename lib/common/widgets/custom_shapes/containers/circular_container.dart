import 'package:beatnik/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BeatnikCircularContainer extends StatelessWidget {
  const BeatnikCircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding,
      this.child,
      this.backgroundColor = BeatnikColors.white,
      this.margin});
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundColor),
      child: child,
    );
  }
}
