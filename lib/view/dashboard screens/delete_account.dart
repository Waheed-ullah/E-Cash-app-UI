import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:nb_utils/nb_utils.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: text("Delete Account"),
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              text("""Are you sure you want to delete your account? Please read how account deletion will affect.
Deleting your account removes personal information our database. Tour email becomes permanently reserved and same email cannot be re-use to register a new account.""",
                      fontSize: size14, fontWeight: FontWeight.w400)
                  .paddingBottom(size40),
              BuildButton(
                  backgrounDColor: redColor,
                  onPressed: () {
                    finish(context);
                    toast("account deleted succesfully", bgColor: redColor);
                  },
                  text: "Delete Account")
            ],
          ).paddingAll(size20),
        ));
  }
}
