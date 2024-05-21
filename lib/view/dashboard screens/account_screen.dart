import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/images.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/view/auth%20screens/login_screen.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/about_us.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/drawer.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/help_support.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/history.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/setting_screen.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/your_post.dart';
import 'package:nb_utils/nb_utils.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(),
              const CircleAvatar(
                radius: size60,
                backgroundImage: AssetImage(image_profile),
              ).paddingSymmetric(vertical: size20),
              text("Emily Grace",
                  fontWeight: FontWeight.w400, fontSize: size14),
              text("emily@gmail.com",
                      fontWeight: FontWeight.w400, fontSize: size14)
                  .paddingBottom(size60),
              drawerRow(
                icon: Icons.history_outlined,
                title: "History",
                ontap: () {
                  const HistoryScreen().launch(context);
                },
              ),
              drawerRow(
                icon: Icons.post_add,
                title: "Yours Posts",
                ontap: () {
                  const YourPosts().launch(context);
                },
              ),
              drawerRow(
                icon: Icons.king_bed,
                title: "About Us",
                ontap: () {
                  const AboutUsScreen().launch(context);
                },
              ),
              drawerRow(
                icon: Icons.settings,
                title: "Setting",
                ontap: () {
                  const SettingScreen().launch(context);
                },
              ),
              drawerRow(
                icon: Icons.help,
                title: "Help & Support",
                ontap: () {
                  const HelpScreen().launch(context);
                },
              ),
              drawerRow(
                icon: Icons.logout,
                title: "Logout",
                ontap: () {
                  const LoginScreen().launch(context);
                },
              ),
            ],
          ).paddingAll(size20),
        ),
      ),
    );
  }
}
