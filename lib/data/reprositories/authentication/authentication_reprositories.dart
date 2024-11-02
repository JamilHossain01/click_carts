import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:j_store/features/authentication/shop/screens/login/login_screen.dart';
import 'package:j_store/features/authentication/shop/screens/onboarding/onboarding_screen.dart';

class AuthenticationRepositories {
  static AuthenticationRepositories get instance => Get.find();
  final storage = GetStorage();

  // Method to handle screen redirection based on first-time use
  void screenRedirect() async {
    if (kDebugMode) {
      print(storage.read('isFirstTime'));
    }

    // Redirects to OnboardingScreen if it's the user's first time, otherwise to LoginScreen
    storage.read('isFirstTime') == true
        ? Get.offAll(() => OnboardingScreen())
        : Get.offAll(() => LoginScreen());
  }
}
