import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/change_password.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/contact_us.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/delete_account.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/privacy_policy.dart';
import 'package:nb_utils/nb_utils.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text("Setting"),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            settingRow(
              title: "Change Password",
              ontap: () {
                const ChangePassword().launch(context);
              },
            ),
            settingRow(
              title: "Privacy Policy",
              ontap: () {
                const PrivacyPolicy().launch(context);
              },
            ),
            settingRow(
              title: "Contact Us",
              ontap: () {
                const ContactUs().launch(context);
              },
            ),
            settingRow(
              title: "Delete Account",
              ontap: () {
                const DeleteAccount().launch(context);
              },
            ),
          ],
        ).paddingAll(size20),
      ),
    );
  }
}

class settingRow extends StatelessWidget {
  var title;
  VoidCallback? ontap;
  settingRow({
    this.title,
    this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2.0),
                  borderRadius: BorderRadius.circular(size8),
                  color: white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(title, fontWeight: FontWeight.w400, fontSize: size15),
                  const Icon(Icons.arrow_forward_ios, size: size20)
                ],
              ).paddingSymmetric(horizontal: size15).paddingAll(size15))
          .paddingBottom(size15),
    );
  }
}
