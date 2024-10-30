import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrrow: true,
        title: Text('Add New Adresss'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user), labelText: 'Home'),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    prefixIcon: Icon(Iconsax.mobile)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Street',
                          prefixIcon: Icon(Iconsax.building_31)),
                    ),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Portal Code',
                          prefixIcon: Icon(Iconsax.code)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'City',
                          prefixIcon: const Icon(Iconsax.building)),
                    ),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'State',
                          prefixIcon: Icon(Iconsax.activity)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Save')))
            ],
          ),
        ),
      ),
    );
  }
}
