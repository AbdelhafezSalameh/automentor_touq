import 'package:auto_mentorx/intro_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyB6-3q7mGJJh12wCg7eY4ITy58lfdAMe3U',
      authDomain: 'auto-mintorx.firebaseapp.com',
      projectId: 'auto-mintorx',
      messagingSenderId: '921794004450',
      appId: '1:921794004450:android:66ae78e58e7d79c8f525bb',
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnBoardingScreen(),
    );
  }
}


//////////////////////hafez