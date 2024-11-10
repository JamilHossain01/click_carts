import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TLoaders {
  /// Displays a warning snackbar with a custom title and optional message.
  static void warningSnackBar({required String title, String? message}) {
    Get.snackbar(
      title,
      message ?? '',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orange.withOpacity(0.8),
      colorText: Colors.white,
      icon: const Icon(Icons.warning, color: Colors.white),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
    );
  }

  /// Displays a success snackbar with a custom title and optional message.
  static void successSnackBar({required String title, String? message}) {
    Get.snackbar(
      title,
      message ?? '',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.withOpacity(0.8),
      colorText: Colors.white,
      icon: const Icon(Icons.check_circle, color: Colors.white),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
    );
  }
}
