import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/shadoes.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/discount_conatiner.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_heart_conatiner.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_tittle_text.dart';
import 'package:j_store/common/styles/widgtes/texts/product_price_text.dart';
import 'package:j_store/common/styles/widgtes/texts/t_brand_text_with_verfied_icon.dart';
import 'package:j_store/features/authentication/shop/screens/product_details/product_detailes.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TProductCart extends StatelessWidget {
  const TProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: TRoundedContainer(
                height: 179.5,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: dark ? TColors.dark : TColors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Expanded(
                          child: TRoundImage(
                            backgroundColor:
                                dark ? TColors.dark : TColors.lightGrey,
                            imageUrl: TImages.productImage1,
                            applyImageRadius: true,
                          ),
                        ),
                        const TDiscountConatiner(),
                        const Positioned(
                            top: -12,
                            right: -4,
                            child: TCartHeartContainer(
                              icon: Iconsax.heart5,
                              iconColors: Colors.red,
                            )),
                      ],
                    ),
                  ],
                ),
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
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  const TBraandTitleWithverificationIcon(
                    icon: Iconsax.verify5,
                    title: 'Nike',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TProductPriceText(
                        maxLines: 1,
                        currencySign: '\$',
                        price: '45',
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSizes.cardRadiusMd),
                                bottomRight:
                                    Radius.circular(TSizes.productImageRadius)),
                            color: TColors.black),
                        child: const SizedBox(
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
      ),
    );
  }
}
