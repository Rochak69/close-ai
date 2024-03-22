// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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
      // ignore: no_default_cases
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCiRIKJr9MVy_kLn67Xu4-Q8-juG-VDwDQ',
    appId: '1:181871412352:web:83522cae0ca294895bd265',
    messagingSenderId: '181871412352',
    projectId: 'closeai-9376f',
    authDomain: 'closeai-9376f.firebaseapp.com',
    storageBucket: 'closeai-9376f.appspot.com',
    measurementId: 'G-XMK1PQ88H1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJXxLmtlw6yvA-qRbFZ6kOi1X8GUmQX68',
    appId: '1:181871412352:android:fc16e85d01204cca5bd265',
    messagingSenderId: '181871412352',
    projectId: 'closeai-9376f',
    storageBucket: 'closeai-9376f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_nefUWWvt6wWDzMH8MUMKPOmKvXHtYqk',
    appId: '1:181871412352:ios:6bdbe894a11f8b355bd265',
    messagingSenderId: '181871412352',
    projectId: 'closeai-9376f',
    storageBucket: 'closeai-9376f.appspot.com',
    iosBundleId: 'com.chronosphere.closeai',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_nefUWWvt6wWDzMH8MUMKPOmKvXHtYqk',
    appId: '1:181871412352:ios:19227803ec4d8b665bd265',
    messagingSenderId: '181871412352',
    projectId: 'closeai-9376f',
    storageBucket: 'closeai-9376f.appspot.com',
    iosBundleId: 'com.example.myApp.RunnerTests',
  );
}
