import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
    required this.title,
    this.smallSize = true,
    this.textAlign,
  });
  final String title;
  final bool smallSize;
  final int maxLine = 2;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.labelLarge,
      textAlign: textAlign,
    );
  }
}
