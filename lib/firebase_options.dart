// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCl_5wXwhuSlkhwIZaFbjgsOBT66JHJTkE',
    appId: '1:352660971702:web:66ce241287cca5e5654617',
    messagingSenderId: '352660971702',
    projectId: 'j-store-28cc4',
    authDomain: 'j-store-28cc4.firebaseapp.com',
    storageBucket: 'j-store-28cc4.firebasestorage.app',
    measurementId: 'G-KGNDZ49N05',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-RsUszSbLJII8GaT07KSyVc3Ke5O2ZaI',
    appId: '1:352660971702:android:d60ad94e5ccab6d7654617',
    messagingSenderId: '352660971702',
    projectId: 'j-store-28cc4',
    storageBucket: 'j-store-28cc4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDD0S3poAo3rsFC740vdIz50VGPTnMZVTg',
    appId: '1:352660971702:ios:5de3023dd4d48642654617',
    messagingSenderId: '352660971702',
    projectId: 'j-store-28cc4',
    storageBucket: 'j-store-28cc4.firebasestorage.app',
    iosBundleId: 'com.example.jStore',
  );
}