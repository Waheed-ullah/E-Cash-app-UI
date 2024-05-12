import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/components/textfield.dart';
import 'package:nb_utils/nb_utils.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: text("Contact Us"),
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(),
              text("Contact Us for Help share",
                      fontSize: size15, fontWeight: FontWeight.w500)
                  .paddingBottom(size5),
              text("Address", fontSize: size15, fontWeight: FontWeight.w500)
                  .paddingBottom(size8),
              text("""House# 72, Road# 21, Landi Arbab, peshawar-1213 (near jamal international School & College, near Ring Road )

\nCall : 13301 (24/7)
\nEmail : support@pathao.com""",
                      fontSize: size13,
                      textColor: gray,
                      align: TextAlign.center,
                      fontWeight: FontWeight.w400)
                  .paddingBottom(size15),
              text("Send Message",
                      fontSize: size15, fontWeight: FontWeight.w500)
                  .paddingBottom(size15),
              textField(
                hint: "Name",
                labell: text("Name"),
                maxline: 1,
              ),
              textField(
                hint: "Email",
                labell: text("Email"),
                maxline: 1,
              ),
              textField(
                hint: "Mobile No",
                labell: text("mobile no"),
                maxline: 1,
              ),
              textField(
                height: size100,
                hint: "write your post here...",
                labell: text("Post"),
                maxline: 3,
              ).paddingBottom(size20),
              BuildButton(onPressed: () {}, text: "Send Message")
            ],
          ).paddingAll(size20),
        ));
  }
}
