import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/device/device_utility.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    this.icons,
    required this.text,
    this.showBackround = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final IconData? icons;
  final String text;
  final bool showBackround, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(
        context); // Assuming this is a method that checks dark mode

    return Padding(
      padding: padding,
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: showBackround
              ? dark
                  ? TColors.dark
                  : TColors.light
              : Colors.transparent,
          border: showBorder ? Border.all(color: TColors.grey) : null,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
        ),
        child: Row(
          children: [
            Icon(
              icons ?? Iconsax.search_normal, // Use provided icon or default
              color: TColors.darkGrey,
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Text(
              text, // Use provided text
              style: const TextStyle(color: TColors.darkerGrey),
            ),
          ],
        ),
      ),
    );
  }
}
