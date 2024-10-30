import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/product.cart/cart/add_romove_button.dart';
import 'package:j_store/common/styles/widgtes/product.cart/cart/cart_item.dart';
import 'package:j_store/common/styles/widgtes/texts/product_price_text.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showRemoveandAddButton = true,
    required this.count,
  });
  final bool showRemoveandAddButton;
  final int count;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: count,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showRemoveandAddButton)
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
          if (showRemoveandAddButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                TProductQuantityAddandRemoveButton(),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                TProductPriceText(price: '200'),
              ],
            ),
        ],
      ),
    );
  }
}
