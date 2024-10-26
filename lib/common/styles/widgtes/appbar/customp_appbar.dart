import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.showBackArrrow = false, // Default to true
    this.leadingIcon,
    this.action,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: title,
      actions: action,
      leading: showBackArrrow
          ? IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Iconsax.arrow_left,
                color: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.dark,
              ))
          : leadingIcon != null
              ? IconButton(
                  onPressed: leadingOnPressed ?? () {},
                  icon: Icon(leadingIcon),
                )
              : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
