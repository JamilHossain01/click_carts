import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      backgroundColor: dark ? TColors.dark : TColors.white,
      showBorder: true,
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(TSizes.sm),
              child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Have a promo code ? type here',
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none)),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  foregroundColor: dark
                      ? TColors.white.withOpacity(0.5)
                      : TColors.dark.withOpacity(0.5)),
              onPressed: () {},
              child: const Text('Apply'),
            ),
          ),
          const SizedBox(
            width: TSizes.spaceBtwItems / 1.7,
          )
        ],
      ),
    );
  }
}
