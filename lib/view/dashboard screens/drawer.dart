import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/images.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/view/auth%20screens/login_screen.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/about_us.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/help_support.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/history.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/setting_screen.dart';
import 'package:nb_utils/nb_utils.dart';

class drawerbuild extends StatelessWidget {
  const drawerbuild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * .6,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: size40,
              backgroundImage: AssetImage(image_profile),
            ).paddingSymmetric(vertical: size20),
            text("Emily Grace", fontWeight: FontWeight.w400, fontSize: size14),
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
    );
  }
}

class drawerRow extends StatelessWidget {
  IconData? icon;
  var title;
  VoidCallback? ontap;
  drawerRow({
    this.icon,
    this.title,
    this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon).paddingRight(size15),
              text(title, fontWeight: FontWeight.w400, fontSize: size14)
            ],
          ).paddingBottom(size10),
        ),
        const Divider()
      ],
    );
  }
}
