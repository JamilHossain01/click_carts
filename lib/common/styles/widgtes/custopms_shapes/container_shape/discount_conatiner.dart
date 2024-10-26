import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TDiscountConatiner extends StatelessWidget {
  const TDiscountConatiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      radius: TSizes.sm,
      backgroundColor: TColors.secondary.withOpacity(0.8),
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.xs, horizontal: TSizes.sm),
      child: Text(
        "25%",
        style:
            Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),
      ),
    );
  }
}
