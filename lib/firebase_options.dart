// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyAm3dPbX68hxZdngWbHMWnkHkt_GN7kzqE',
    appId: '1:158522764051:web:b04f0d9909fa70248708e6',
    messagingSenderId: '158522764051',
    projectId: 'metime-30309',
    authDomain: 'metime-30309.firebaseapp.com',
    storageBucket: 'metime-30309.appspot.com',
    measurementId: 'G-7WS65T0C4J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHpyHp2sjl2qrHiKJs-lvaO47gSdURJ24',
    appId: '1:158522764051:android:8b1551fc91ae354c8708e6',
    messagingSenderId: '158522764051',
    projectId: 'metime-30309',
    storageBucket: 'metime-30309.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQREAphwTVy8Tm55TXRa5-VVwrc8eUYYo',
    appId: '1:158522764051:ios:38bf98fb1ac668c98708e6',
    messagingSenderId: '158522764051',
    projectId: 'metime-30309',
    storageBucket: 'metime-30309.appspot.com',
    iosClientId: '158522764051-3peatnsrupjvc8fqrh56aaon496du7im.apps.googleusercontent.com',
    iosBundleId: 'com.example.metime',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQREAphwTVy8Tm55TXRa5-VVwrc8eUYYo',
    appId: '1:158522764051:ios:38bf98fb1ac668c98708e6',
    messagingSenderId: '158522764051',
    projectId: 'metime-30309',
    storageBucket: 'metime-30309.appspot.com',
    iosClientId: '158522764051-3peatnsrupjvc8fqrh56aaon496du7im.apps.googleusercontent.com',
    iosBundleId: 'com.example.metime',
  );
}