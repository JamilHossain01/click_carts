import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TBillingAdressSection extends StatelessWidget {
  const TBillingAdressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Adress',
          showActionButton: true,
          buttonTitle: 'Change',
        ),
        Text(
          'Jamil Hossain',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Row(
          children: [
            Icon(
              Iconsax.call4,
              size: 14,
            ),
            Text(
              '+8801711111111',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.sm / 1.5,
        ),
        Row(
          children: [
            Icon(
              Iconsax.user,
              size: 14,
            ),
            Text(
              ' Mirpur, Dhaka 1207, Bangladesh',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ],
    );
  }
}
