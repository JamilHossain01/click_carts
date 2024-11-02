import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/shadoes.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/discount_conatiner.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_heart_conatiner.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_tittle_text.dart';
import 'package:j_store/common/styles/widgtes/texts/product_price_text.dart';
import 'package:j_store/common/styles/widgtes/texts/t_brand_text_with_verfied_icon.dart';

import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TProductHorizontal extends StatelessWidget {
  const TProductHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkGrey : TColors.softGrey,
          ),
          width: 310,
          child: Row(
            children: [
              TRoundedContainer(
                height: 120,
                backgroundColor: dark ? TColors.dark : TColors.light,
                padding: const EdgeInsets.all(TSizes.sm),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: TRoundImage(
                        imageUrl: TImages.productImage5,
                        backgroundColor: dark ? TColors.dark : TColors.light,
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: TCartHeartContainer(
                        icon: Iconsax.heart5,
                        iconColors: Colors.red,
                      ),
                    ),
                    const Positioned(
                      top: 5,
                      child: TDiscountConatiner(),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwItems / 2),
              SizedBox(
                width: 164,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: TSizes.sm / 2, left: TSizes.sm),
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.only(top: TSizes.spaceBtwSections),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TProductTitleText(
                              title: 'Blue Nike T-Shirt',
                              smallSize: false,
                            ),
                            TBraandTitleWithverificationIcon(
                              title: 'Nike',
                              icon: Iconsax.verify5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TProductPriceText(price: '250'),
                          Container(
                            decoration: const BoxDecoration(
                              color: TColors.dark,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSizes.cardRadiusLg),
                                bottomRight:
                                    Radius.circular(TSizes.productImageRadius),
                              ),
                            ),
                            child: const SizedBox(
                              width: TSizes.iconLg * 1.2,
                              height: TSizes.iconLg * 1.2,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
