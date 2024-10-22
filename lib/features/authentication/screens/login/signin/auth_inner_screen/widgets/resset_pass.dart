import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/spacing_styles.dart';
import 'package:j_store/features/authentication/screens/login/login_screen.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/constants/text_strings.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class RessetPass extends StatelessWidget {
  const RessetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              Image(
                width: THelperFunctions.screenWidth() * .6,
                image: AssetImage(TImages.deliveredEmailIllustration),
              ),
              const SizedBox(
                  height: TSizes
                      .spaceBtwItems), // Added spacing between image and title
              Text(
                TTexts.changeYourPasswordTitle,

                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center, // Center-aligned for better UX
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                'Jamil@gamil.com',

                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center, // Center-aligned for better UX
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(() => const LoginScreen()),
                    child: const Text(
                      TTexts.done,
                    )),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: Text(TTexts.resendEmail)))
            ],
          ),
        ),
      ),
    );
  }
}
