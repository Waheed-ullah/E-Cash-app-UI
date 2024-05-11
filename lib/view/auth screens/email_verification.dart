import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/components/textfield.dart';
import 'package:muzahir_fyp/view/auth%20screens/phone_verification.dart';
import 'package:nb_utils/nb_utils.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                        onPressed: () {
                          finish(context);
                        },
                        icon: const Icon(Icons.arrow_back))
                    .paddingBottom(size20),
                text("Email Verification ",
                        fontWeight: FontWeight.w500, fontSize: size18)
                    .paddingBottom(size30),
                textField(
                  hint: "email",
                  maxline: 1,
                  labell: text("email"),
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BuildButton(
                    onPressed: () {
                      const PhoneVerificationScreen().launch(context);
                    },
                    text: "Send OTP"))
          ],
        ).paddingAll(size20),
      ),
    );
  }
}
