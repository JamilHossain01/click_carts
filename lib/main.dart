import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:j_store/features/authentication/shop/screens/onboarding/onboarding_screen.dart';
import 'package:j_store/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
