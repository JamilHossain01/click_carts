import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/widgtes/appbar/customp_appbar.dart';
import 'package:j_store/common/styles/widgtes/custopms_shapes/container_shape/curve_edge_conatiner_widgets.dart';
import 'package:j_store/common/styles/widgtes/list_tile/t_seting_menue_item.dart';
import 'package:j_store/common/styles/widgtes/list_tile/t_user_tile.dart';
import 'package:j_store/common/styles/widgtes/texts/section_heading.dart';
import 'package:j_store/utils/constants/sizes.dart';
// ignore: unused_import
import 'package:j_store/utils/constants/text_strings.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text('Account'),
                  ),
                  TUserProfileTile(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
                  TSettingMenueItem(
                      title: 'My Adress',
                      subTitle: 'Set shopping delivery addres',
                      icon: Iconsax.safe_home),
                  TSettingMenueItem(
                      title: 'My Cart',
                      subTitle: 'Add, remove prodeucts and move to checkout',
                      icon: Iconsax.shopping_cart),
                  TSettingMenueItem(
                      title: 'My orders',
                      subTitle: 'In-progress and Completed \n orders',
                      icon: Iconsax.bag_tick),
                  TSettingMenueItem(
                      title: 'Bank Account',
                      subTitle: 'Withdrawal and deposit',
                      icon: Iconsax.bank),
                  TSettingMenueItem(
                      title: 'My Cuppons',
                      subTitle: 'List of all available coupons',
                      icon: Iconsax.notification),
                  TSettingMenueItem(
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connection account',
                      icon: Iconsax.security_card),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(
                    title: 'App Setting',
                    showActionButton: false,
                  ),
                  TSettingMenueItem(
                      title: 'LOad data',
                      subTitle: 'Upload data to your Cloud Firbase',
                      icon: Iconsax.document_upload)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
