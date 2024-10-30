import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/appbar/appbar.dart';
import 'package:j_store/common/styles/widgtes/bands/barnd_card.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/search_container.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/layout/grid_layout.dart';
import 'package:j_store/common/styles/widgtes/product.cart/cart/cart_menue_icon.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/features/authentication/shop/screens/widgets/widgets/t_category_tab.dart';
import 'package:j_store/utils/constants/colors.dart';
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
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const TCategoryTab(),
              const TCategoryTab(),
              const TCategoryTab(),
              const TCategoryTab(),
              const TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
