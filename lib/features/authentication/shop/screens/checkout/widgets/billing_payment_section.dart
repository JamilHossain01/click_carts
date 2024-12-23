import 'package:flutter/material.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
        ),
        Row(
          children: [
            TRoundImage(
                hight: 40,
                widht: 60,
                backgroundColor: dark ? TColors.dark : TColors.white,
                imageUrl: TImages.paypal),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              'Paypal',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }
}
