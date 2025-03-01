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
    apiKey: 'AIzaSyB8On5ABr-99k6EWOOWghr7xzwsp41LfjM',
    appId: '1:43835481855:web:df261a93af69ab3f4db6ca',
    messagingSenderId: '43835481855',
    projectId: 'iman-ba',
    authDomain: 'iman-ba.firebaseapp.com',
    databaseURL: 'https://iman-ba-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'iman-ba.appspot.com',
    measurementId: 'G-0F2QYDS6TW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbd7UCaNnLWAW74o0fOx1x0fIG7A7_hfQ',
    appId: '1:43835481855:android:a4e34a37cfdda53a4db6ca',
    messagingSenderId: '43835481855',
    projectId: 'iman-ba',
    databaseURL: 'https://iman-ba-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'iman-ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAbgFn5I_HTbLHU7NbdDHMA-dvWO5D8Os8',
    appId: '1:43835481855:ios:41c3a0aac9bd97604db6ca',
    messagingSenderId: '43835481855',
    projectId: 'iman-ba',
    databaseURL: 'https://iman-ba-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'iman-ba.appspot.com',
    androidClientId: '43835481855-oj8lfsr3q3g32ib876a8bsc02e0im3fb.apps.googleusercontent.com',
    iosClientId: '43835481855-3sln3aghq2g905lgm3dgj6cdhjgfaj93.apps.googleusercontent.com',
    iosBundleId: 'com.example.apkImanBa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAbgFn5I_HTbLHU7NbdDHMA-dvWO5D8Os8',
    appId: '1:43835481855:ios:5af411c0300957144db6ca',
    messagingSenderId: '43835481855',
    projectId: 'iman-ba',
    databaseURL: 'https://iman-ba-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'iman-ba.appspot.com',
    androidClientId: '43835481855-oj8lfsr3q3g32ib876a8bsc02e0im3fb.apps.googleusercontent.com',
    iosClientId: '43835481855-bju3ni3cb0r222uj6rjnk7ba2d39rjhg.apps.googleusercontent.com',
    iosBundleId: 'com.example.apkImanBa.RunnerTests',
  );
}
