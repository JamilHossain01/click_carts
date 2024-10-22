import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/constants/text_strings.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
              TSizes.defaultSpace), // Added padding for better layout control
          child: Column(
            children: [
              Image(
                width: THelperFunctions.screenWidth() * .6,
                image: AssetImage(image),
              ),
              const SizedBox(
                  height: TSizes
                      .spaceBtwItems), // Added spacing between image and title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center, // Center-aligned for better UX
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
