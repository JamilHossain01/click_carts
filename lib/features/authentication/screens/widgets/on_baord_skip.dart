import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:j_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:j_store/utils/constants/sizes.dart';
import 'package:j_store/utils/device/device_utility.dart';

class OnboarSkip extends StatelessWidget {
  const OnboarSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnboardingController.instance.skipPage(),
            child: Text(
              "Skip",
              style: TextStyle(),
            )));
  }
}
