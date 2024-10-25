import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.child,
    this.backgroundColor = TColors.white,
    this.padding = 0,
  });

  final double? height;
  final double? width;
  final double radius;

  final Widget? child;
  final Color backgroundColor;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
