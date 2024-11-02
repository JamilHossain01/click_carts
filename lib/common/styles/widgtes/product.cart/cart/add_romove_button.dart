import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/TCirculerIcon.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TProductQuantityAddandRemoveButton extends StatelessWidget {
  const TProductQuantityAddandRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          iconSize: TSizes.md,
          height: 32,
          width: 32,
          icon: Iconsax.minus,
          color: dark ? TColors.white : TColors.black,
          backroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        const TCircularIcon(
          height: 32,
          width: 32,
          icon: Iconsax.add,
          color: TColors.white,
          backroundColor: TColors.primary,
          iconSize: TSizes.md,
        )
      ],
    );
  }
}
