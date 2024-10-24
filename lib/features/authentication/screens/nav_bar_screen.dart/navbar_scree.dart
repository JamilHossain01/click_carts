import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/features/authentication/shop/screen/home.dart';
import 'package:j_store/features/authentication/shop/screen/shop_screen.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? TColors.dark : TColors.white,
          indicatorColor: dark
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Shope"),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: "Favourite"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "profile")
          ],
        ),
      ),
      body: Obx(
        () => controller.screen[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  final screen = [
    HomeScreen(),
    ShopScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.amber,
    )
  ];
}
