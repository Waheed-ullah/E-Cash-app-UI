import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/components/textfield.dart';
import 'package:nb_utils/nb_utils.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text("Change Password"),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            textField(
              hint: "Old password",
              maxline: 1,
              labell: text(
                "enter old password",
              ),
              suffix: const Icon(Icons.visibility_off),
            ),
            textField(
              hint: "New password",
              maxline: 1,
              labell: text(
                "enter New password",
              ),
              suffix: const Icon(Icons.visibility_off),
            ),
            textField(
              hint: "conform password",
              maxline: 1,
              labell: text(
                "conform password",
              ),
              suffix: const Icon(Icons.visibility_off),
            ),
            BuildButton(
                    onPressed: () {
                      finish(context);
                    },
                    text: "Save")
                .paddingSymmetric(vertical: size20)
          ],
        ).paddingAll(size20),
      ),
    );
  }
}
