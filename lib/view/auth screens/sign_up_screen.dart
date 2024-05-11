import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/components/textfield.dart';
import 'package:muzahir_fyp/view/auth%20screens/email_verification.dart';
import 'package:nb_utils/nb_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _value;
  var nameController = TextEditingController();

  var emailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                      onPressed: () {
                        finish(context);
                      },
                      icon: const Icon(Icons.arrow_back))
                  .paddingBottom(size20),
              text("Sign up with your email ",
                      fontWeight: FontWeight.w500, fontSize: size18)
                  .paddingBottom(size30),
              textField(
                hint: "Name",
                controller: nameController,
                labell: text("Name"),
                maxline: 1,
              ),
              Container(
                height: size55,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: gray),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                  child: DropdownButtonFormField<String>(
                    hint: text("Gender",
                        textColor: black, fontWeight: FontWeight.w400),
                    decoration: const InputDecoration.collapsed(hintText: ''),
                    items: ['male', 'female', 'others'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: text(value,
                            textColor: black, fontWeight: FontWeight.w400),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (kDebugMode) {
                        print('Selected: $value');
                      }
                    },
                  ),
                ),
              ).paddingOnly(top: size10, bottom: size20),
              textField(
                hint: "Email",
                controller: emailController,
                maxline: 1,
                labell: text("Email"),
              ),
              textField(
                controller: passController,
                hint: "Password",
                maxline: 1,
                labell: text("Password"),
              ),
              RadioListTile(
                toggleable: true,
                activeColor: primaryColor,
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
                title: text(
                    "By signing up. you agree to the Terms of service and Privacy policy.",
                    textColor: grey,
                    fontSize: size13,
                    maxLine: 2,
                    overFlow: TextOverflow.ellipsis),
              ).paddingBottom(size20),
              BuildButton(
                      onPressed: () {
                        if (emailController.text.isEmpty ||
                            passController.text.isEmpty ||
                            nameController.text.isEmpty) {
                          toast("any field is empty", bgColor: redColor);
                        } else {
                          const EmailVerificationScreen()
                              .launch(context)
                              .then((value) {
                            toast("verify email", bgColor: greenColor);
                          });
                        }
                      },
                      text: "Sign Up")
                  .paddingBottom(size20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(
                    "Already You have an account?",
                    textColor: grey,
                    fontSize: size13,
                  ),
                  textButton(
                    text: "login",
                    ontap: () {},
                  )
                ],
              )
            ],
          ).paddingAll(size20),
        ),
      ),
    );
  }
}
