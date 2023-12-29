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
    apiKey: 'AIzaSyBnmUkAaiGikJG-YnZeqzuLgfiRtFHkeFs',
    appId: '1:680228043839:web:bde361549fd796075acc8a',
    messagingSenderId: '680228043839',
    projectId: 'driver-7a926',
    authDomain: 'driver-7a926.firebaseapp.com',
    storageBucket: 'driver-7a926.appspot.com',
    measurementId: 'G-D3B6PD7D1V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBn3eQO_DhrFSSS02X932JNdv3OFywhQ0U',
    appId: '1:680228043839:android:5fee0f2524e8a8635acc8a',
    messagingSenderId: '680228043839',
    projectId: 'driver-7a926',
    storageBucket: 'driver-7a926.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7s5BU_aLd6GXkdO7Fe8d0K-TAeXbnK9I',
    appId: '1:680228043839:ios:80c0b9cc79397bdb5acc8a',
    messagingSenderId: '680228043839',
    projectId: 'driver-7a926',
    storageBucket: 'driver-7a926.appspot.com',
    iosBundleId: 'com.example.driver',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7s5BU_aLd6GXkdO7Fe8d0K-TAeXbnK9I',
    appId: '1:680228043839:ios:e28b5d34c2f991d35acc8a',
    messagingSenderId: '680228043839',
    projectId: 'driver-7a926',
    storageBucket: 'driver-7a926.appspot.com',
    iosBundleId: 'com.example.driver.RunnerTests',
  );
}
