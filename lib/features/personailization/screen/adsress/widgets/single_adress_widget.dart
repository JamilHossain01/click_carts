import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TSingleAdress extends StatelessWidget {
  const TSingleAdress({super.key, required this.selectedAdress});
  final bool selectedAdress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      width: double.infinity,
      backgroundColor: selectedAdress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: TColors.primary,
      margin: const EdgeInsets.only(bottom: TSizes.defaultSpace),
      padding: const EdgeInsets.all(TSizes.md),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: 0,
            child: Icon(
              selectedAdress ? Iconsax.tick_circle5 : null,
              color: selectedAdress
                  ? dark
                      ? TColors.light
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adam Azizs',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              const Text('(+880)1700000000'),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              const Text(
                '88345 Mirpur, Dhaka, 1207, Bangladesh',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
