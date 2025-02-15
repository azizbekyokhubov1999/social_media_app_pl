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
    apiKey: 'AIzaSyC-do7Ks5alCcvJSCMAHoA_IprDSCV0iYs',
    appId: '1:1033363419615:web:e3bb077accbc9e1a11d46a',
    messagingSenderId: '1033363419615',
    projectId: 'socialmediaapp-f551f',
    authDomain: 'socialmediaapp-f551f.firebaseapp.com',
    storageBucket: 'socialmediaapp-f551f.firebasestorage.app',
    measurementId: 'G-V2SK5VHHNK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3qF3jD3Kg1aXmiEHtiJEHGseBJoAl51k',
    appId: '1:1033363419615:android:ed7b9e253fcd34df11d46a',
    messagingSenderId: '1033363419615',
    projectId: 'socialmediaapp-f551f',
    storageBucket: 'socialmediaapp-f551f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3xjpK7LUiFLFYdsrgRcSyGnic1iZo0a0',
    appId: '1:1033363419615:ios:174c258b95e9bb1a11d46a',
    messagingSenderId: '1033363419615',
    projectId: 'socialmediaapp-f551f',
    storageBucket: 'socialmediaapp-f551f.firebasestorage.app',
    iosBundleId: 'com.example.socialMediaAppPl',
  );
}
