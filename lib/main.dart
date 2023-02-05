import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hackathoneproject/firebase_options.dart';
import 'package:hackathoneproject/screens/home_page.dart';
import 'package:hackathoneproject/screens/login_screen.dart';
import 'package:hackathoneproject/screens/signup_page.dart';
import 'package:hackathoneproject/screens/splashscreen_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}