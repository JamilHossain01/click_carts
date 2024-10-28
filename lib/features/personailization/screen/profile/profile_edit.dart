import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/images/t_circuler_image.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/features/personailization/screen/profile/widgets/profile_menue.dart';
// ignore: unused_import
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    const TCirculerImage(
                      image: TImages.user,
                      widht: 80,
                      hight: 80,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: TSizes.spaceBtwItems,
                    ),
                    Text(
                      'Change your profile picture',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems / 5,
              ),
              const TSectionHeading(
                title: 'Porfile Information',
                showActionButton: false,
              ),
              const TProfileMenue(
                title: 'Name',
                value: 'App Developr',
              ),
              const TProfileMenue(
                title: 'User Name',
                value: 'App Developr',
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const TProfileMenue(
                title: 'User ID',
                value: '124565',
                icon: Iconsax.copy,
              ),
              const TProfileMenue(
                title: 'E-mail',
                value: ' alpo@email.com',
              ),
              const TProfileMenue(
                title: 'Phone Number',
                value: '+1234568',
              ),
              const TProfileMenue(
                title: 'Gender',
                value: 'Male',
              ),
              const TProfileMenue(
                title: 'Date of Birth',
                value: '01/01/2000',
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Create Account',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
