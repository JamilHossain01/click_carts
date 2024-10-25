import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/appbar/appbar.dart';
import 'package:j_store/common/styles/widgtes/bands/barnd_card.dart';
import 'package:j_store/common/styles/widgtes/bands/bran_show.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/search_container.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/layout/grid_layout.dart';
import 'package:j_store/common/styles/widgtes/product.cart/cart_menue_icon.dart';
import 'package:j_store/common/styles/widgtes/product_card/cart/product_cart_horizontal.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            TCartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const TSearchContainer(
                        text: "Search in Store",
                        showBackround: false,
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSectionHeading(title: "Featured Brands"),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 70,
                        itemBuilder: (_, index) {
                          return const TBrandCard(
                            showBorder: true,
                          );
                        },
                      )
                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Cosmetic'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                  ],
                ),
              ),
            ];
          },
          // ignore: prefer_const_constructors
          body: TabBarView(
            children: [
              Padding(
                  padding: const EdgeInsets.all(
                      TSizes.defaultSpace), // Add 'const' for optimization
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const TBrandShow(images: [
                          TImages.productImage1,
                          TImages.productImage2,
                          TImages.productImage3
                        ]),
                        const TBrandShow(images: [
                          TImages.productImage4,
                          TImages.productImage5,
                          TImages.productImage6
                        ]),
                        const TSectionHeading(title: 'You might also like'),
                        TGridLayout(
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const TProductCart();
                          },
                        )
                      ],
                    ),
                  )),
              const Padding(
                  padding: EdgeInsets.all(
                      TSizes.defaultSpace), // Add 'const' for optimization
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TBrandShow(images: [
                          TImages.productImage1,
                          TImages.productImage2,
                          TImages.productImage3
                        ]),
                        TBrandShow(images: [
                          TImages.productImage4,
                          TImages.productImage5,
                          TImages.productImage6
                        ]),
                      ],
                    ),
                  )),
              const Padding(
                  padding: EdgeInsets.all(
                      TSizes.defaultSpace), // Add 'const' for optimization
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TBrandShow(images: [
                          TImages.productImage1,
                          TImages.productImage2,
                          TImages.productImage3
                        ]),
                        TBrandShow(images: [
                          TImages.productImage4,
                          TImages.productImage5,
                          TImages.productImage6
                        ]),
                      ],
                    ),
                  )),
              const Padding(
                  padding: EdgeInsets.all(
                      TSizes.defaultSpace), // Add 'const' for optimization
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TBrandShow(images: [
                          TImages.productImage1,
                          TImages.productImage2,
                          TImages.productImage3
                        ]),
                        TBrandShow(images: [
                          TImages.productImage4,
                          TImages.productImage5,
                          TImages.productImage6
                        ]),
                      ],
                    ),
                  )),
              const Padding(
                  padding: EdgeInsets.all(
                      TSizes.defaultSpace), // Add 'const' for optimization
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TBrandShow(images: [
                          TImages.productImage1,
                          TImages.productImage2,
                          TImages.productImage3
                        ]),
                        TBrandShow(images: [
                          TImages.productImage4,
                          TImages.productImage5,
                          TImages.productImage6
                        ]),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
