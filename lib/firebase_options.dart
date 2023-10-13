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
    apiKey: 'AIzaSyDVRLim34IEFwPLtImRzG2VU3VWXI8F8-8',
    appId: '1:743506076698:web:d66a8982028c44b480dda3',
    messagingSenderId: '743506076698',
    projectId: 'parryatan-e7d27',
    authDomain: 'parryatan-e7d27.firebaseapp.com',
    databaseURL: 'https://parryatan-e7d27-default-rtdb.firebaseio.com',
    storageBucket: 'parryatan-e7d27.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtzJna5eNflzs1632S5UhP3QCWtgvRehE',
    appId: '1:743506076698:android:26276c7a427b66fe80dda3',
    messagingSenderId: '743506076698',
    projectId: 'parryatan-e7d27',
    databaseURL: 'https://parryatan-e7d27-default-rtdb.firebaseio.com',
    storageBucket: 'parryatan-e7d27.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQuuvyyGlOETVZSy-REwwRxBOiELWii3o',
    appId: '1:743506076698:ios:8a82d5f7ce533ed280dda3',
    messagingSenderId: '743506076698',
    projectId: 'parryatan-e7d27',
    databaseURL: 'https://parryatan-e7d27-default-rtdb.firebaseio.com',
    storageBucket: 'parryatan-e7d27.appspot.com',
    iosBundleId: 'com.example.testScanner',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQuuvyyGlOETVZSy-REwwRxBOiELWii3o',
    appId: '1:743506076698:ios:0112f3aac755c0bc80dda3',
    messagingSenderId: '743506076698',
    projectId: 'parryatan-e7d27',
    databaseURL: 'https://parryatan-e7d27-default-rtdb.firebaseio.com',
    storageBucket: 'parryatan-e7d27.appspot.com',
    iosBundleId: 'com.example.testScanner.RunnerTests',
  );
}