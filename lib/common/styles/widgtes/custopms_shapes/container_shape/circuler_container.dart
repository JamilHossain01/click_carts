import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.height,
    this.width,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
  });

  final double? height;
  final double? width;
  final double radius;

  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

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
      ),
      child: child,
    );
  }
}
