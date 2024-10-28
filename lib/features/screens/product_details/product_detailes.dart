import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/widgtes/chips/t_choice_chip.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/discount_conatiner.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_tittle_text.dart';
import 'package:j_store/common/styles/widgtes/texts/product_price_text.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/common/styles/widgtes/texts/t_brand_text_with_verfied_icon.dart';
import 'package:j_store/features/screens/product_details/product_reviews/product_review.dart';
import 'package:j_store/features/screens/product_details/widgets/bottom_addto_cart.dart';
import 'package:j_store/features/screens/product_details/widgets/product_attributes.dart';
import 'package:j_store/features/screens/product_details/widgets/product_image_slider.dart';
import 'package:j_store/features/screens/product_details/widgets/t_rating_share.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
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
                          title: 'Nike', icon: Iconsax.verify5),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 1.5,
                  ),
                  const TProductAttributes(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const Column(
                    children: [
                      TSectionHeading(
                        title: 'Colors',
                        showActionButton: false,
                      )
                    ],
                  ),
                  Wrap(
                    children: [
                      TChoiceChip(
                        text: 'Green',
                        selected: true,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'Blue',
                        selected: false,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'Red',
                        selected: false,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'Yellow',
                        selected: true,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'Black',
                        selected: true,
                        onSelected: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSectionHeading(
                    title: 'Size',
                    showActionButton: false,
                  ),
                  Wrap(
                    spacing: 5,
                    children: [
                      TChoiceChip(
                        text: 'EU 34',
                        selected: true,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'EU 36',
                        selected: false,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'EU 38',
                        selected: false,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'EU 36',
                        selected: false,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'EU 38',
                        selected: true,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'EU 36',
                        selected: false,
                        onSelected: (value) {},
                      ),
                      TChoiceChip(
                        text: 'EU 38',
                        selected: true,
                        onSelected: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 0.7,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const ReadMoreText(
                    'Stay warm and stylish with our premium jacket, crafted from high-quality, breathable materials. Ideal for both casual outings and active wear, this jacket combines comfort with modern design. Available in multiple colors, it’s the perfect addition to any wardrobe',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewScreen()),
                          icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
