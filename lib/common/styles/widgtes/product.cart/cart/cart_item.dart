import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_tittle_text.dart';
import 'package:j_store/common/styles/widgtes/texts/t_brand_text_with_verfied_icon.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        TRoundImage(
          hight: 60,
          widht: 60,
          imageUrl: TImages.productImage21,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TBraandTitleWithverificationIcon(
                title: 'Nike', icon: Iconsax.verify5),
            TProductTitleText(
              title: 'Nike Shoes',
              maxLine: 1,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Color:', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: ' Red', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: ' Size:', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '27', style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ],
        ),
      ],
    );
  }
}
