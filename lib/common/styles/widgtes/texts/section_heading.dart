import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View All',
    this.textColor,
    this.showActionButton = true,
    this.onPressed,
  });

  final String title, buttonTitle;
  final Color? textColor;
  final bool showActionButton;
  final VoidCallback? onPressed; // Corrected VoidCallback

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title, // Use the title passed in the constructor
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonTitle,
                style: TextStyle(
                  color: dark ? TColors.textWhite : TColors.textPrimary,
                )), // Use the buttonTitle passed in the constructor
          ),
      ],
    );
  }
}
