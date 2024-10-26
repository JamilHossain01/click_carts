import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TProfileMenue extends StatelessWidget {
  const TProfileMenue({
    super.key,
    this.icon = Iconsax.arrow_right_34,
    required this.title,
    required this.value,
    this.onTap,
  });
  final IconData? icon;
  final String title, value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: TSizes.defaultSpace / 1.5),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                child: Icon(
              icon,
              size: 20,
            )),
          ],
        ),
      ),
    );
  }
}
