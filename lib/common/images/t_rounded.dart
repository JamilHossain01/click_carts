import 'package:flutter/widgets.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TRoundImage extends StatelessWidget {
  const TRoundImage(
      {super.key,
      this.hight,
      this.widht,
      required this.imageUrl,
      this.isNetWorkImage = false,
      this.applyImageRadius = true,
      this.border,
      this.fit = BoxFit.contain,
      this.padding,
      this.onPressd,
      this.borderRadius = TSizes.md,
      this.backgroundColor = TColors.light});
  final double? hight, widht;
  final String imageUrl;
  final bool isNetWorkImage;
  final bool applyImageRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressd;
  final double borderRadius;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressd,
      child: Container(
        decoration: BoxDecoration(
            border: border,
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(TSizes.md),
          child: Image(
            height: hight,
            width: widht,
            image: isNetWorkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
