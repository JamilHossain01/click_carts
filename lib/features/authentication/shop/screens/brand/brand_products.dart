import 'package:flutter/material.dart';
import 'package:j_store/common/styles/sortable/sorbale.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/bands/barnd_card.dart';
import 'package:j_store/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: const Column(
            children: [
              SizedBox(
                height: 80,
                width: double.infinity,
                child: TBrandCard(
                  showBorder: true,
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
