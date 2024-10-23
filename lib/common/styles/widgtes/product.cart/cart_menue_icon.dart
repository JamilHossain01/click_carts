import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    this.iconColors,
    required this.onPressed,
  });
  final Color? iconColors;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.shopping_bag,
            )),
        Positioned(
          right: 0,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
