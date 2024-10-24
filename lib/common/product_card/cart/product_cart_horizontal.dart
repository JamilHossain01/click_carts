import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/shadoes.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/circuler_container.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TProductCart extends StatelessWidget {
  const TProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 188,
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TCircularContainer(
            height: 190,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    TRoundImage(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                    ),
                    TCircularContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                          vertical: TSizes.xs, horizontal: TSizes.sm),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    ),
                    const Positioned(
                        top: -12, right: -4, child: TCartHeartContainer()),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TProductTitleText(
                  title: 'Nike Air Jordon Shoes',
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),
                Row(
                  children: [
                    Text(
                      "Nike",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Icon(
                      Iconsax.verify5,
                      color: TColors.primary,
                      size: TSizes.iconXs,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$75",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius)),
                          color: TColors.black),
                      child: SizedBox(
                        height: TSizes.iconLg * 1.2,
                        width: TSizes.iconLg * 1.2,
                        child: Icon(
                          Iconsax.add,
                          color: TColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
    required this.title,
    this.smallSize = true,
    this.textAlign,
  });
  final String title;
  final bool smallSize;
  final int maxLine = 2;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.labelLarge,
      textAlign: textAlign,
    );
  }
}

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
