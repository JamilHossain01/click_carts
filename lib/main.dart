import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart'; // Needed if using GetX for dependency injection or navigation

import 'package:j_store/app.dart';
import 'firebase_options.dart';

void main() async {
  // Ensure that all widgets and bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Preserve the splash screen until initialization is complete
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);

  // Initialize Firebase with options for the current platform
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize GetStorage for local storage
  await GetStorage.init();

  // Register any global dependencies (e.g., Get.put(NetworkManager()); if needed)
  // Get.put(NetworkManager());

  // Remove the splash screen after all setup is complete
  FlutterNativeSplash.remove();

  // Run the app
  runApp(const MyApp());
}
