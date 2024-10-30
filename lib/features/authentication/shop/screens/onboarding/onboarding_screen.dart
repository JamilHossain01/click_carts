import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:j_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:j_store/features/authentication/shop/screens/widgets/my_smoth_page_indicator.dart';
import 'package:j_store/features/authentication/shop/screens/widgets/on_baord_skip.dart';
import 'package:j_store/features/authentication/shop/screens/widgets/on_board_next_button.dart';
import 'package:j_store/features/authentication/shop/screens/widgets/on_board_page.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            children: const [
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: OnboardingPage(
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1,
                  image: TImages.onBoardingImage1,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: OnboardingPage(
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2,
                  image: TImages.onBoardingImage2,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: OnboardingPage(
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3,
                  image: TImages.onBoardingImage3,
                ),
              ),
            ],
          ),
          const OnboarSkip(),
          const MySmothPageIndicator(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
