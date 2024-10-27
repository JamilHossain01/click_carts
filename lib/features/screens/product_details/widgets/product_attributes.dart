import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_tittle_text.dart';
import 'package:j_store/common/styles/widgtes/texts/product_price_text.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          backgroundColor:
              dark ? TColors.darkerGrey : TColors.darkGrey.withOpacity(.5),
          child: Padding(
            padding: const EdgeInsets.all(TSizes.sm),
            child: Column(
              children: [
                Row(
                  children: [
                    const TSectionHeading(
                      title: 'Variation',
                      showActionButton: false,
                    ),
                    const SizedBox(
                      width: TSizes.spaceBtwItems,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            Text('price'),
                            SizedBox(
                              width: TSizes.spaceBtwItems / 1.8,
                            ),
                            Text(
                              '\$45',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              width: TSizes.spaceBtwItems / 1.9,
                            ),
                            TProductPriceText(
                                maxLines: 1, currencySign: '\$', price: '40'),
                          ],
                        ),
                        Row(
                          children: [
                            const TProductTitleText(
                              title: 'Stock',
                              smallSize: true,
                            ),
                            const SizedBox(
                              width: TSizes.spaceBtwItems,
                            ),
                            Text(
                              'In Stock',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const TProductTitleText(
                  title:
                      "Stylish, comfortable, and versatile jacket for everyday wear. Perfect for layering in cooler weather.",
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
