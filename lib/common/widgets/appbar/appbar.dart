import 'package:beatnik/utils/constants/sizes.dart';
import 'package:beatnik/utils/device/device_utility.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeatnikAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BeatnikAppbar(
      {super.key,
       this.title,
       this.showBackArrow= false,
      this.leadingIcon,
       this.actions,
      this.leadingOnPressed});
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: BeatnikSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(CupertinoIcons.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(BeatnikDeviceUtility.getAppBarHeight());
}
