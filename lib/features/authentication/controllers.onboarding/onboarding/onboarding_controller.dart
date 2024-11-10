import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:j_store/features/authentication/shop/screens/login/login_screen.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  final storage = GetStorage();

  // Method to update the page indicator when the page changes
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  // Method to navigate to a specific page on dot click
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);

    /// Navigate to the given page when a dot navigation item is clicked
    ///
    /// [index] is the index of the page to navigate to
    ///
    /// This method updates the [currentPageIndex] observable and jumps the
    /// [pageController] to the given page
  }

  // Move to the next page or go to the login screen if it's the last page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Assuming 3 onboarding pages
      storage.write('isFirstTime', false);
      Get.offAll(() => LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Skip to the last onboarding page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
