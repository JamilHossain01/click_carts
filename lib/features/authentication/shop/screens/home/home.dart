import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_store/common/styles/widgtes/layout/grid_layout.dart';
import 'package:j_store/common/styles/widgtes/product_card/cart/product_cart_horizontal.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/curve_edge_conatiner_widgets.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/search_container.dart';
import 'package:j_store/common/styles/widgtes/images_text_widgets/vertical_image_text.dart';
import 'package:j_store/common/styles/widgtes/product_card/prodcut_card_vertical.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/features/authentication/shop/screens/allproducts/all_products.dart';
import 'package:j_store/features/authentication/shop/screens/widgets/widgets/home_appbar.dart';
import 'package:j_store/features/authentication/shop/screens/widgets/widgets/t_promo_slider.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const THomeAppBar(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                const TSearchContainer(
                  text: 'Search in Store',
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      const TSectionHeading(
                        title: "Popular Categories",
                        textColor: TColors.white,
                        showActionButton: false,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return const TcerticalEmageText(
                              image: TImages.shoeIcon,
                              title: 'Shoe category',
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: TPromoCaroSlider(
                    banners: [
                      TImages.banner1,
                      TImages.banner2,
                      TImages.banner3,
                      TImages.banner4,
                    ],
                  ),
                ),
                TSectionHeading(
                  title: 'Popular Products',
                  showActionButton: true,
                  onPressed: () => Get.to(() => const AllProducts()),
                ),
                TGridLayout(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const TProductCart();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
