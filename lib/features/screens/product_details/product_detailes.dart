import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/discount_conatiner.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_tittle_text.dart';
import 'package:j_store/common/styles/widgtes/texts/product_price_text.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/common/styles/widgtes/texts/t_brand_text_with_verfied_icon.dart';
import 'package:j_store/features/screens/product_details/widgets/product_image_slider.dart';
import 'package:j_store/features/screens/product_details/widgets/t_rating_share.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TProdcutImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: TSizes.defaultSpace,
                  right: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TRatingandShare(),
                  Row(
                    children: [
                      const TDiscountConatiner(),
                      const SizedBox(
                        width: TSizes.spaceBtwItems / 1.2,
                      ),
                      Text(
                        '\$200',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems / 1.2,
                      ),
                      const TProductPriceText(
                          maxLines: 1, currencySign: '\$', price: '175')
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 1.5,
                  ),
                  const TProductTitleText(title: 'Nike jacket'),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  const TProductTitleText(title: 'Status'),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.2,
                      ),
                      TRoundImage(
                          backgroundColor: dark ? TColors.white : TColors.dark,
                          hight: 20,
                          widht: 20,
                          imageUrl: TImages.clothIcon),
                      const TBraandTitleWithverificationIcon(
                          title: 'Nike', icon: Iconsax.verify5)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
