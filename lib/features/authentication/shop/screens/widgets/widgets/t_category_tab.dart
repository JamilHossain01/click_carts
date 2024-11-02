import 'package:flutter/material.dart';
import 'package:j_store/common/styles/widgtes/bands/bran_show.dart';
import 'package:j_store/common/styles/widgtes/layout/grid_layout.dart';
import 'package:j_store/common/styles/widgtes/product_card/prodcut_card_vertical.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
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
          ),
        ]);
  }
}
