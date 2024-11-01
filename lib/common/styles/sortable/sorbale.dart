import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/layout/grid_layout.dart';
import 'package:j_store/common/styles/widgtes/product_card/prodcut_card_vertical.dart';
import 'package:j_store/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          items: ['Shoes', 'Clothes', 'Elctronics']
              .map(
                (option) => DropdownMenuItem(
                  child: Text(option),
                  value: option,
                ),
              )
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TGridLayout(
          itemCount: 6,
          itemBuilder: (_, index) => const TProductCart(),
        )
      ],
    );
  }
}
