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
    apiKey: 'AIzaSyCwoUrhUqnan80Z3tp5xkrJ7rLiippQJxo',
    appId: '1:175337414485:web:86318e291dfad4c49499dc',
    messagingSenderId: '175337414485',
    projectId: 'slash-design-3cf60',
    authDomain: 'slash-design-3cf60.firebaseapp.com',
    storageBucket: 'slash-design-3cf60.appspot.com',
    measurementId: 'G-TY5JRPT4JR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAi9TdnzMQfhIXxj24UqDIwUb7ASg7bY_Q',
    appId: '1:175337414485:android:c491b3796ae064519499dc',
    messagingSenderId: '175337414485',
    projectId: 'slash-design-3cf60',
    storageBucket: 'slash-design-3cf60.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA5qO34D78MiodTjWQaE2JZXd7U76oRS5A',
    appId: '1:175337414485:ios:a732c9b6e739737a9499dc',
    messagingSenderId: '175337414485',
    projectId: 'slash-design-3cf60',
    storageBucket: 'slash-design-3cf60.appspot.com',
    iosClientId: '175337414485-9tblc01g4n59mu22nvvjgt19a3giq7s7.apps.googleusercontent.com',
    iosBundleId: 'com.example.slashDesign',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA5qO34D78MiodTjWQaE2JZXd7U76oRS5A',
    appId: '1:175337414485:ios:a732c9b6e739737a9499dc',
    messagingSenderId: '175337414485',
    projectId: 'slash-design-3cf60',
    storageBucket: 'slash-design-3cf60.appspot.com',
    iosClientId: '175337414485-9tblc01g4n59mu22nvvjgt19a3giq7s7.apps.googleusercontent.com',
    iosBundleId: 'com.example.slashDesign',
  );
}
