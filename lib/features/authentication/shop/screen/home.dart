import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:j_store/common/images/t_rounded.dart';
import 'package:j_store/common/product_card/cart/product_cart_horizontal.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/circuler_container.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/curve_edge_conatiner_widgets.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/search_container.dart';
import 'package:j_store/common/styles/widgtes/images_text_widgets/vertical_image_text.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/features/authentication/shop/screen/widgets/home_appbar.dart';
import 'package:j_store/features/authentication/shop/screen/widgets/t_promo_slider.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
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
              GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: TSizes.gridViewSpacing,
                    crossAxisSpacing: TSizes.gridViewSpacing,
                    mainAxisExtent: 288),
                itemBuilder: (context, index) {
                  return const TProductCart();
                },
              )
            ],
          ),
        ],
      ),
    ));
  }
}
