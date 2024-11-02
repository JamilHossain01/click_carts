import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_store/features/authentication/shop/screens/category/sub_category.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TcerticalEmageText extends StatelessWidget {
  const TcerticalEmageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgrounColor = TColors.white,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgrounColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Get.to(() => const SubCategoriesScreen()),
              child: Container(
                height: 56,
                width: 56,
                padding: const EdgeInsets.all(TSizes.sm),
                decoration: BoxDecoration(
                  color:
                      backgrounColor ?? (dark ? TColors.black : TColors.white),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                    color: TColors.dark,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 50,
              child: Text(
                title,
                maxLines: 1, // Limiting to 1 line
                overflow: TextOverflow.ellipsis, // Overflow if the text exceeds
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
