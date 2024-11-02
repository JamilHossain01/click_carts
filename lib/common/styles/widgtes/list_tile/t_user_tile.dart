import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    this.onPressed,
    this.icon = Iconsax.edit,
  });

  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const TRoundImage(
          imageUrl: TImages.user,
          widht: 50,
          hight: 50,
        ),
        title: Text(
          'Jamil Hossain',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white),
        ),
        subtitle: Text(
          'jamil@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.white),
        ),
        trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit)));
  }
}
