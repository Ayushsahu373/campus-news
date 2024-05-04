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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBmvmEs2nVxbfgo5f906ToR0CcXZoNwN9o',
    appId: '1:361001715872:web:8b80f87027bfb1beffa1c5',
    messagingSenderId: '361001715872',
    projectId: 'campus-news-b1a28',
    authDomain: 'campus-news-b1a28.firebaseapp.com',
    storageBucket: 'campus-news-b1a28.appspot.com',
    measurementId: 'G-6CLBZD0R43',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFEUqNqHZgi4HLGJ-hshQsW3ua8pwMh8o',
    appId: '1:361001715872:android:fc7f37bdad8eec4bffa1c5',
    messagingSenderId: '361001715872',
    projectId: 'campus-news-b1a28',
    storageBucket: 'campus-news-b1a28.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC87aU7UChqzlgY0O3h0k1jSaAJWHie7Ow',
    appId: '1:361001715872:ios:31ab2c086f22523bffa1c5',
    messagingSenderId: '361001715872',
    projectId: 'campus-news-b1a28',
    storageBucket: 'campus-news-b1a28.appspot.com',
    iosBundleId: 'com.example.campusNews',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC87aU7UChqzlgY0O3h0k1jSaAJWHie7Ow',
    appId: '1:361001715872:ios:31ab2c086f22523bffa1c5',
    messagingSenderId: '361001715872',
    projectId: 'campus-news-b1a28',
    storageBucket: 'campus-news-b1a28.appspot.com',
    iosBundleId: 'com.example.campusNews',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBmvmEs2nVxbfgo5f906ToR0CcXZoNwN9o',
    appId: '1:361001715872:web:a4057b40c68a0d36ffa1c5',
    messagingSenderId: '361001715872',
    projectId: 'campus-news-b1a28',
    authDomain: 'campus-news-b1a28.firebaseapp.com',
    storageBucket: 'campus-news-b1a28.appspot.com',
    measurementId: 'G-LKD200BDRZ',
  );
}