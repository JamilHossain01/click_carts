import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/spacing_styles.dart';
import 'package:j_store/common/styles/widgtes/common_fb_g_sign.dart';
import 'package:j_store/common/styles/widgtes/tform_devider.dart';
import 'package:j_store/features/authentication/controllers.onboarding/signup/signup_controller.dart';
import 'package:j_store/features/authentication/shop/screens/login/signin/verify_email.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/constants/text_strings.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';
import 'package:j_store/utils/validators/validation.dart';

import 'auth_inner_screen/widgets/text_spain.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TTexSpain(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const VerifyEmailScreen()),
                    child: const Text(TTexts.createAccount)),
              ),
              const Padding(
                padding: TSpacingStyles.paddingWithAppBarHeight,
                child: TFormDivider(),
              ),
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupKey,
      child: Column(children: [
        Row(
          children: [
            Flexible(
              child: TextFormField(
                controller: controller.firstNameController,
                validator: (value) =>
                    TValidator.validateEmtyText('First Name', value),
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Flexible(
              child: TextFormField(
                controller: controller.lastNameController,
                validator: (value) =>
                    TValidator.validateEmtyText('Last Name', Value),
                decoration: const InputDecoration(
                    labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TextFormField(
          controller: controller.userNameController,
          validator: (value) => TValidator.validateEmtyText('User Name', Value),
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit), labelText: TTexts.username),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TextFormField(
          controller: controller.emailController,
          validator: (value) => TValidator.validateEmail(value),
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TextFormField(
          controller: controller.phoneNumberController,
          validator: (value) => TValidator.validatePhoneNumber(value),
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call), labelText: TTexts.phoneNo),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TextFormField(
          controller: controller.passwordController,
          validator: (value) => TValidator.validatePassword(value),
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password),
        ),
      ]),
    );
  }
}
