import 'package:flutter/material.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/curved_edges/curve_edges_widgets.dart';
import 'package:j_store/common/styles/widgtes/product.cart/product_cart_heart_conatiner.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TProdcutImageSlider extends StatelessWidget {
  const TProdcutImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurveEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.white,
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: SizedBox(
                height: 400,
                child: Image(image: AssetImage(TImages.productImage3)),
              ),
            ),
            const TAppBar(
              showBackArrrow: true,
              action: [TCartHeartContainer()],
            ),
            Positioned(
              bottom: 30,
              right: 90,
              child: SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width *
                    0.6, // set width to control layout
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemBuilder: (_, index) => TRoundImage(
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    imageUrl: TImages.productImage3,
                    widht: 90,
                    hight: 80, // added height for consistency
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
