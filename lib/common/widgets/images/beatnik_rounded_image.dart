import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class BeatnikRoundedImage extends StatelessWidget {
  const BeatnikRoundedImage({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor = BeatnikColors.light,
    this.fit = BoxFit.cover,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = BeatnikSizes.md,
  });
  final double? height, width;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
              border: border,
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              fit: fit,
              image: isNetworkImage
                  ? AssetImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
            ),
          )),
    );
  }
}