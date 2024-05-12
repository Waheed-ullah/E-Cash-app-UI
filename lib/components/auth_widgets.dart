import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/assets/strings.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class textButton extends StatelessWidget {
  VoidCallback? ontap;
  String? text;
  Color? color;

  textButton({
    this.ontap,
    this.color = primaryColor,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ontap,
        child: Text(
          text.toString(),
          style: TextStyle(
              fontSize: size15,
              color: color,
              fontWeight: FontWeight.w400,
              fontFamily: font_montserrat),
        ));
  }
} //pin code field

class PinCodeTextfield extends StatelessWidget {
  const PinCodeTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 5,
      obscureText: false,
      animationType: AnimationType.fade,
      cursorColor: primaryColor,
      pinTheme: PinTheme(
        fieldHeight: 50,
        fieldWidth: 40,
        shape: PinCodeFieldShape.box,
        activeColor: primaryColor,
        selectedColor: primaryColor,
        borderWidth: 2,
        inactiveColor: grey_color,
      ),
    );
  }
}

//text widget

Widget text(text,
    {var fontSize,
    Color? textColor,
    var fontFamily,
    var isCentered = false,
    var maxLine,
    var decoration,
    var overFlow,
    TextAlign? align,
    var latterSpacing = 0.5,
    bool textAllCaps = false,
    var isLongText = false,
    bool lineThrough = false,
    var fontWeight}) {
  return Text(
    textAllCaps ? text! : text!,
    textAlign: align,
    maxLines: isLongText ? null : maxLine,
    overflow: overFlow,
    style: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: textColor ?? blackColor,
      // height: 1.5,
      letterSpacing: latterSpacing,
      decoration: decoration,
    ),
  );
}
