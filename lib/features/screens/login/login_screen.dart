import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/spacing_styles.dart';
import 'package:j_store/common/styles/widgtes/tform_devider.dart';
import 'package:j_store/features/screens/login/signin/auth_inner_screen/forget_screen.dart';
import 'package:j_store/features/screens/login/signin/sign_in_screen.dart';
import 'package:j_store/features/screens/nav_bar_screen.dart/navbar_scree.dart';

import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/constants/text_strings.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

import '../../../common/styles/widgtes/common_fb_g_sign.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwInputFields),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.direct_right,
                            ),
                            labelText: TTexts.email),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          labelText: TTexts.password,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const Text(TTexts.rememberMe),
                            ],
                          ),
                          TextButton(
                            onPressed: () => Get.to(() => const ForgetScreen()),
                            child: const Text(TTexts.forgetPassword),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const NavbarScreen()),
                          child: const Text(TTexts.signIn),
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () => Get.to(() => const SignUpScreen()),
                            child: const Text(
                              TTexts.createAccount,
                            )),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                    ],
                  ),
                ),
              ),
              const TFormDivider(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
