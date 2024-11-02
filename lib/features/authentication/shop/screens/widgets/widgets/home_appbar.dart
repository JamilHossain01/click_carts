import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/product.cart/cart/cart_menue_icon.dart';
import 'package:j_store/features/authentication/shop/screens/cart/cart_screen.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: TColors.white))
        ],
      ),
      action: [
        TCartCounterIcon(
          onPressed: () {
            Get.to(() => const CartScreen());
          },
        )
      ],
    );
  }
}
