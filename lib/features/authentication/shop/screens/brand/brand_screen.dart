import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/bands/barnd_card.dart';
import 'package:j_store/common/styles/widgtes/layout/grid_layout.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/features/authentication/shop/screens/brand/brand_products.dart';

class BrandScree extends StatelessWidget {
  const BrandScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TSectionHeading(
              title: 'Brans',
            ),
            TGridLayout(
              mainAxisExtent: 80,
              itemCount: 8,
              itemBuilder: (_, index) => TBrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const BrandProducts()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
