import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/components/textfield.dart';
import 'package:muzahir_fyp/view/auth%20screens/sign_up_screen.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/dashboard.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var active1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
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
                    const Spacer(),
                    text("Login into your account",
                            fontWeight: FontWeight.w500, fontSize: size18)
                        .paddingBottom(size30),
                    textField(
                      hint: "Email",
                      maxline: 1,
                      labell: text("Email"),
                      controller: emailController,
                    ),
                    textField(
                      hint: "Password",
                      controller: passController,
                      maxline: 1,
                      labell: text("Password"),
                      obscures: active1,
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              active1 == true
                                  ? active1 = false
                                  : active1 = true;
                            });
                          },
                          icon: active1 == true
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                    ),
                    const Spacer(),
                    BuildButton(
                            onPressed: () {
                              if (emailController.text.isEmpty ||
                                  passController.text.isEmpty) {
                                toast("email or password is empty",
                                    bgColor: redColor);
                              } else {
                                const Dashboard().launch(context);
                                toast("login successfully",
                                    bgColor: greenColor);
                              }
                            },
                            text: "Login")
                        .paddingBottom(size20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text(
                          "Didn't have an account?",
                          textColor: grey,
                          fontSize: size13,
                        ),
                        textButton(
                          text: "Sign Up",
                          ontap: () {
                            const SignUpScreen().launch(context);
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
