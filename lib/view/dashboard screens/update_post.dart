import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/components/textfield.dart';
import 'package:nb_utils/nb_utils.dart';

class UpdatePostScreen extends StatefulWidget {
  const UpdatePostScreen({super.key});

  @override
  State<UpdatePostScreen> createState() => _UpdatePostScreenState();
}

class _UpdatePostScreenState extends State<UpdatePostScreen> {
  var addressController = TextEditingController();
  var amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            text("Update Your Post here",
                    fontSize: size18, fontWeight: FontWeight.w600)
                .paddingBottom(size10),
            Align(
              alignment: Alignment.center,
              child: text("Muzahir Hussain",
                  fontSize: size16,
                  textColor: primaryColor,
                  fontWeight: FontWeight.w600),
            ).paddingBottom(size20),
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
                  hint: text("Choose one",
                      textColor: black, fontWeight: FontWeight.w400),
                  decoration: const InputDecoration.collapsed(hintText: ''),
                  items: ['Cash to E-Money', 'E-Money to Cash']
                      .map((String value) {
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
              hint: "Address",
              maxline: 1,
              controller: addressController,
              labell: text("Address"),
            ),
            textField(
              hint: "Amount",
              maxline: 1,
              controller: amountController,
              labell: text("Amount"),
            ).paddingBottom(size30),
            BuildButton(
                onPressed: () {
                  if (addressController.text.isNotEmpty &&
                      amountController.text.isNotEmpty) {
                    toast("Update successfully", bgColor: primaryColor);
                    finish(context);
                  } else {
                    toast("Address or Amount is not added", bgColor: redColor);
                  }
                },
                text: "Update")
          ],
        ).paddingAll(size20),
      ),
    );
  }
}
