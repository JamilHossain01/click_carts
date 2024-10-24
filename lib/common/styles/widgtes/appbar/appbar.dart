import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/device/device_utility.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TTabbarView extends StatelessWidget implements PreferredSizeWidget {
  const TTabbarView({
    super.key,
    required this.tab,
  });
  final List<Widget> tab;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: TColors.primary,
      unselectedLabelColor: TColors.darkerGrey,
      labelColor:
          THelperFunctions.isDarkMode(context) ? TColors.white : TColors.dark,
      isScrollable: true,
      tabs: tab,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
      TDeviceUtils.getAppBarHeight()); // Sets the height of the TabBar
}
