import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD6RV319YM5-wQSIg0P6CTLgutj5MwwrIk",
            authDomain: "saphackproject.firebaseapp.com",
            projectId: "saphackproject",
            storageBucket: "saphackproject.appspot.com",
            messagingSenderId: "185701819717",
            appId: "1:185701819717:web:17245ba5818c009a278a2c",
            measurementId: "G-Q14SQ6L1CN"));
  } else {
    await Firebase.initializeApp();
  }
}
