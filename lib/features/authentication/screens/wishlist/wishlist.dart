import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/layout/grid_layout.dart';
import 'package:j_store/common/styles/widgtes/product.cart/cart_menue_icon.dart';
import 'package:j_store/common/styles/widgtes/product.cart/t_circuler_icon.dart';
import 'package:j_store/common/styles/widgtes/product_card/cart/product_cart_horizontal.dart';
import 'package:j_store/features/authentication/shop/screen/home.dart';
import 'package:j_store/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: const Text("Wishlist"),
        action: [
          TCarCirculerIcon(
            onPressed: () {
              Get.to(() => const HomeScreen());
            },
            icon: Iconsax.add,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (context, index) => const TProductCart(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
