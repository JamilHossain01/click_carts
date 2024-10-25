import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_circuler_image.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/common/styles/widgtes/texts/t_brand_text_with_verfied_icon.dart';
import 'package:j_store/common/styles/widgtes/texts/t_branded_tittle.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/enums.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        child: Column(
          children: [
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TCirculerImage(
                    image: TImages.clothIcon,
                    isNetWorkImage: false,
                    backgroundColor: Colors.transparent,
                    overlacyColor: dark ? TColors.white : TColors.dark,
                  ),
                  // ignore: prefer_const_constructors
                  Expanded(
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const TBraandTitleWithverificationIcon(
                          title: 'Nike',
                          icon: Iconsax.verify5,
                          brandTextSize: TextSizes.large,
                        ),
                        TBrandedTitleText(title: '300 product with sj')
                      ],
                    ),
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
