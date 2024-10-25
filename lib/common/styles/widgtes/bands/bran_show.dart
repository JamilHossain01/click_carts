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

class TBrandShow extends StatelessWidget {
  const TBrandShow({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.defaultSpace),
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TCirculerImage(
                image: TImages.clothIcon,
                isNetWorkImage: false,
                backgroundColor: Colors.transparent,
                overlacyColor: dark ? TColors.white : TColors.dark,
              ),
              // ignore: prefer_const_constructors
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TBraandTitleWithverificationIcon(
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
          Row(
              children: images
                  .map(
                    (image) => brnadTopProductImageWidget(image, context),
                  )
                  .toList())
        ],
      ),
    );
  }

  Widget brnadTopProductImageWidget(String image, BuildContext context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkGrey
            : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(image: AssetImage(image)),
      ),
    );
  }
}
