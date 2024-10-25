import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/texts/t_branded_tittle.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/enums.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TBraandTitleWithverificationIcon extends StatelessWidget {
  const TBraandTitleWithverificationIcon({
    super.key,
    required this.title,
    required this.icon,
    this.textColor,
    this.iconColor = TColors.primary,
    this.maxLines = 1,
    this.brandTextSize = TextSizes.small,
    this.textAlign,
  });
  final String title;
  final IconData icon;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextSizes brandTextSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TBrandedTitleText(
          title: title,
          color: textColor,
          brandTextSize: brandTextSize,
          maxLines: maxLines,
          textAlign: textAlign,
        ),
        Icon(
          icon,
          color: TColors.primary,
          size: TSizes.iconXs,
        ),
      ],
    );
  }
}
