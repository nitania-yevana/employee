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
    apiKey: 'AIzaSyDvAC7eb-RSApMRDYqD3akCSYINsQ8X8_0',
    appId: '1:143408594247:web:5fa9e1498f98a0b978e062',
    messagingSenderId: '143408594247',
    projectId: 'first-app-86a36',
    authDomain: 'first-app-86a36.firebaseapp.com',
    databaseURL: 'https://first-app-86a36-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'first-app-86a36.appspot.com',
    measurementId: 'G-DF4DEW4SYZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD99lh64CgjvosMpWXjodVuMVhPc8TVd5E',
    appId: '1:143408594247:android:379fbea82814f1af78e062',
    messagingSenderId: '143408594247',
    projectId: 'first-app-86a36',
    databaseURL: 'https://first-app-86a36-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'first-app-86a36.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQtj0hVkWCLWCzKrhatPjg4Hj6jXlpIcY',
    appId: '1:143408594247:ios:bf16051a7672523b78e062',
    messagingSenderId: '143408594247',
    projectId: 'first-app-86a36',
    databaseURL: 'https://first-app-86a36-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'first-app-86a36.appspot.com',
    iosBundleId: 'com.example.daftarBelanja',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQtj0hVkWCLWCzKrhatPjg4Hj6jXlpIcY',
    appId: '1:143408594247:ios:c927c8a1f3a5928878e062',
    messagingSenderId: '143408594247',
    projectId: 'first-app-86a36',
    databaseURL: 'https://first-app-86a36-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'first-app-86a36.appspot.com',
    iosBundleId: 'com.example.employee.RunnerTests',
  );
}
