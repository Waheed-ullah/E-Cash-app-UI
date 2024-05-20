import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/view/auth%20screens/profile_screen.dart';
import 'package:nb_utils/nb_utils.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                          onPressed: () {
                            finish(context);
                          },
                          icon: const Icon(Icons.arrow_back))
                      .paddingBottom(size20),
                ),
                text("Verification ",
                        fontWeight: FontWeight.w500, fontSize: size18)
                    .paddingBottom(size15),
                text("enter your otp here ",
                        fontWeight: FontWeight.w400,
                        textColor: grey,
                        fontSize: size13)
                    .paddingBottom(size30),
                const PinCodeTextfield().paddingSymmetric(vertical: size10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(
                      "didn't recieve code?",
                      textColor: grey,
                      fontSize: size13,
                    ),
                    textButton(
                      text: "Resend again",
                      ontap: () {},
                    )
                  ],
                )
              ],
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BuildButton(
                    onPressed: () {
                      const ProfileScreen().launch(context);
                    },
                    text: "Verify"))
          ],
        ).paddingAll(size20),
      ),
    );
  }
}
