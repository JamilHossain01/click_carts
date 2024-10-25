import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.3),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horzontalProductShadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
