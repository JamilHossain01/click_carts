import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/features/personailization/screen/adsress/add_new_address.dart';
import 'package:j_store/features/personailization/screen/adsress/widgets/single_adress_widget.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/sizes.dart';

class UserAdressScreen extends StatelessWidget {
  const UserAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Iconsax.add),
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
      ),
      appBar: TAppBar(
        title: Text('Adress', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrrow: true,
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAdress(
                selectedAdress: true,
              ),
              TSingleAdress(
                selectedAdress: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
