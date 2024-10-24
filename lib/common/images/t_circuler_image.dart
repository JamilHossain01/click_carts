import 'package:flutter/widgets.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TCirculerImage extends StatelessWidget {
  const TCirculerImage({
    super.key,
    this.hight = 56,
    this.widht = 56,
    this.padiing = TSizes.sm,
    required this.image,
    this.isNetWorkImage = false,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.overlacyColor,
  });

  final double? hight, widht, padiing;
  final String image;
  final bool isNetWorkImage;
  final BoxFit? fit;
  final Color? backgroundColor;
  final Color? overlacyColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: widht,
      decoration: BoxDecoration(
        color: backgroundColor ??
            (THelperFunctions.isDarkMode(context)
                ? TColors.dark
                : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetWorkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlacyColor,
        fit: fit,
      ),
    );
  }
}
