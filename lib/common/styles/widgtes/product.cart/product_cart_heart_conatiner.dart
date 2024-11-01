import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TCartHeartContainer extends StatelessWidget {
  const TCartHeartContainer({
    super.key,
    this.iconColors,
    this.onPressed,
    this.icon = Iconsax.shopping_bag,
    this.text = '2',
    this.height,
    this.width,
    this.size,
    this.backRoundcolor, // Default text value
  });

  final Color? iconColors;
  final VoidCallback? onPressed;
  final IconData icon;
  final String text;
  final double? height, width, size;

  final Color? backRoundcolor;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backRoundcolor != null
            ? backRoundcolor!
            : dark
                ? TColors.dark.withOpacity(0.8)
                : TColors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColors,
        ),
      ),
    );
  }
}
