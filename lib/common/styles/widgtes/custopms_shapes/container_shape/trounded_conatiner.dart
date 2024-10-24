import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
  });

  final double? height;
  final double? width;
  final double radius;

  final Widget? child;
  final Color backgroundColor, borderColor;
  final bool showBorder;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder
            ? Border.all(color: borderColor)
            : null, // Conditional border
      ),
      child: child,
    );
  }
}
