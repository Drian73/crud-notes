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
    apiKey: 'AIzaSyDKtQeqNNVkbEM8HS3m2BVPtHmRS_1zBBw',
    appId: '1:813430330686:web:50375e8cb916b41520486f',
    messagingSenderId: '813430330686',
    projectId: 'notes-d5ca4',
    authDomain: 'notes-d5ca4.firebaseapp.com',
    storageBucket: 'notes-d5ca4.appspot.com',
    measurementId: 'G-FG6XT396QF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGsG1gBG8vmPh0rwSfCCpiJRbrcSf_C_A',
    appId: '1:813430330686:android:ea4194b1d7be6cec20486f',
    messagingSenderId: '813430330686',
    projectId: 'notes-d5ca4',
    storageBucket: 'notes-d5ca4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZKhZTACJuaUzmo9WTTfdmYjhKJx4Aq-4',
    appId: '1:813430330686:ios:0d7e75ed6e4cec1c20486f',
    messagingSenderId: '813430330686',
    projectId: 'notes-d5ca4',
    storageBucket: 'notes-d5ca4.appspot.com',
    iosBundleId: 'com.example.notes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZKhZTACJuaUzmo9WTTfdmYjhKJx4Aq-4',
    appId: '1:813430330686:ios:0d7e75ed6e4cec1c20486f',
    messagingSenderId: '813430330686',
    projectId: 'notes-d5ca4',
    storageBucket: 'notes-d5ca4.appspot.com',
    iosBundleId: 'com.example.notes',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDKtQeqNNVkbEM8HS3m2BVPtHmRS_1zBBw',
    appId: '1:813430330686:web:830c8f2bf7ae98ea20486f',
    messagingSenderId: '813430330686',
    projectId: 'notes-d5ca4',
    authDomain: 'notes-d5ca4.firebaseapp.com',
    storageBucket: 'notes-d5ca4.appspot.com',
    measurementId: 'G-YHHQT7WG0T',
  );

}