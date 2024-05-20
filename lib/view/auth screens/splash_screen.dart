import 'dart:async';

import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/images.dart';
import 'package:muzahir_fyp/view/auth%20screens/welcome_screen.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () {
      // const Dashboard().launch(context);

      const WelcomeScreen().launch(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            image_logo,
            height: MediaQuery.sizeOf(context).height * .7,
            width: MediaQuery.sizeOf(context).width * .7,
          ))
        ],
      ),
    );
  }
}
