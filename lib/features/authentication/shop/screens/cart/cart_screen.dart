import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/features/authentication/shop/screens/cart/widgets/cart_iten.dart';
import 'package:j_store/features/authentication/shop/screens/checkout/checkout.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Cart'),
        showBackArrrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(
          count: 10,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckOutScreen()),
            child: const Text('Checkout:\$200')),
      ),
    );
  }
}
