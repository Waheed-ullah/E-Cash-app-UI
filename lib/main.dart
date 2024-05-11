import 'package:flutter/material.dart';
import 'package:muzahir_fyp/view/auth%20screens/splash_screen.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: white),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
