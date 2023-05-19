import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBWgEKBwYF4-Wj7zZXhQWFpOy8D5HOrmL4",
            authDomain: "task-management-ea78e.firebaseapp.com",
            projectId: "task-management-ea78e",
            storageBucket: "task-management-ea78e.appspot.com",
            messagingSenderId: "195279828603",
            appId: "1:195279828603:web:635ed199c50a2bc52bd4de",
            measurementId: "G-D0MK3N7CW8"));
  } else {
    await Firebase.initializeApp();
  }
}
