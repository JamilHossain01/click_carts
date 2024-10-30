import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/utils/constants/colors.dart';

class TCarTCirculerIcon extends StatelessWidget {
  const TCarTCirculerIcon({
    super.key,
    this.iconColors,
    required this.onPressed,
    this.icon = Iconsax.shopping_bag,
    this.text = '2', // Default text value
  });

  final Color? iconColors;
  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: iconColors ?? TColors.primary),
        ),
      ],
    );
  }
}
