import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:j_store/utils/theme/theme.dart';
import 'features/authentication/shop/screens/login/login_screen.dart';
import 'features/authentication/shop/screens/onboarding/onboarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve persistent storage instance
    final storage = GetStorage();
    bool isFirstTime = storage.read('isFirstTime') ?? true;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'J Store',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      // Show OnboardingScreen if first-time user, else LoginScreen
      home: isFirstTime ? const OnboardingScreen() : const LoginScreen(),
    );
  }
}
