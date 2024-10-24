import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TCartHeartContainer extends StatelessWidget {
  const TCartHeartContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      decoration: BoxDecoration(
        color: dark
            ? TColors.dark.withOpacity(0.8)
            : TColors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.heart5,
          color: Colors.red,
        ),
      ),
    );
  }
}
