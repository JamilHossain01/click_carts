import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_circuler_image.dart';
import 'package:j_store/common/styles/widgtes/appbar/appbar.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/search_container.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/trounded_conatiner.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/layout/grid_layout.dart';
import 'package:j_store/common/styles/widgtes/product.cart/cart_menue_icon.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/common/styles/widgtes/texts/t_brand_text_with_verfied_icon.dart';
import 'package:j_store/common/styles/widgtes/texts/t_branded_tittle.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/enums.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                            return GestureDetector(
                              onTap: () {},
                              child: TRoundedContainer(
                                padding: const EdgeInsets.all(TSizes.sm),
                                backgroundColor: Colors.transparent,
                                showBorder: true,
                                child: Column(
                                  children: [
                                    Flexible(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TCirculerImage(
                                            image: TImages.clothIcon,
                                            isNetWorkImage: false,
                                            backgroundColor: Colors.transparent,
                                            overlacyColor:
                                                THelperFunctions.isDarkMode(
                                                        context)
                                                    ? TColors.white
                                                    : TColors.dark,
                                          ),
                                          // ignore: prefer_const_constructors
                                          Expanded(
                                            child: const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const TBraandTitleWithverificationIcon(
                                                  title: 'Nike',
                                                  icon: Iconsax.verify5,
                                                  brandTextSize:
                                                      TextSizes.large,
                                                ),
                                                TBrandedTitleText(
                                                    title:
                                                        '300 product with sj')
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  bottom: TTabbarView(
                    tab: [
                      Text('Sport'),
                      Text('Cosmetics'),
                      Text('Cloth'),
                      Text('Electornics'),
                      Text('Furniture'),
                    ],
                  ),
                ),
              ];
            },
            body: Container()),
      ),
    );
  }
}
