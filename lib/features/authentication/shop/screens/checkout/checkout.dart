import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/common/styles/widgtes/loging_signUp/succes_screen.dart';
import 'package:j_store/common/styles/widgtes/product.cart/cart/coupon_widgets.dart';
import 'package:j_store/features/authentication/shop/screens/cart/widgets/cart_iten.dart';
import 'package:j_store/features/authentication/shop/screens/checkout/widgets/billing_adress_section.dart';
import 'package:j_store/features/authentication/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:j_store/features/authentication/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:j_store/features/authentication/shop/screens/nav_bar_screen.dart/navbar_scree.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrrow: true,
        title: Text(
          'Order Reviews',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TCartItems(
                count: 3,
                showRemoveandAddButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.dark : TColors.white,
                showBorder: true,
                child: const Column(
                  children: [
                    TBillinAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TBillingAdressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: TImages.successfulPaymentIcon,
                    title: 'Payment Success',
                    subtitle: 'Your paymen has been successfully proccessed',
                    onPressed: () => Get.to(() => const NavbarScreen()),
                  ),
                ),
            child: const Text('Checkout\$200')),
      ),
    );
  }
}
