import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/device/device_utility.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    required this.tabs,
  });
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkerGrey,
        labelColor: dark ? TColors.white : TColors.dark,
        isScrollable: true,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
      TDeviceUtils.getAppBarHeight()); // Sets the height of the TabBar
}
