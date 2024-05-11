import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/assets/strings.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

//pageview controller contriner
class pageviewContainer extends StatelessWidget {
  IconData? icon;
  Color? containercolor;
  VoidCallback? ontap;
  pageviewContainer({
    this.icon,
    this.ontap,
    this.containercolor,
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: containercolor),
      child: Center(
        child: IconButton(
            icon: Icon(
              icon,
              size: 17,
              color: white_color,
            ),
            onPressed: ontap),
      ),
    );
  }
}

//pageview controller image

class splashControllerImage extends StatelessWidget {
  String? image;
  splashControllerImage({
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image.toString(),
      height: 50,
      width: 50,
    );
  }
}
//divider

class buildDivider extends StatelessWidget {
  const buildDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: grey_color,
        thickness: 1,
      ),
    );
  }
}
//login text

class textfieldCommonText extends StatelessWidget {
  String? text;
  textfieldCommonText({
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text.toString(),
          textAlign: TextAlign.start,
          style: const TextStyle(
              fontSize: size13,
              fontFamily: font_montserrat,
              fontWeight: FontWeight.w500),
        ));
  }
}
//forgot password

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
}
//divider row

class dividerRow extends StatelessWidget {
  const dividerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const buildDivider(),
        const Text(
          "OR",
          style: TextStyle(color: grey_color),
        ).paddingSymmetric(horizontal: size5),
        const buildDivider(),
      ],
    );
  }
}
//signup bottom text

class signupBottomText extends StatelessWidget {
  const signupBottomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "text_verification_conditions_",
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: size12, color: grey_color, fontWeight: FontWeight.w400),
        ),
        textButton(
          text: "text_signup_terms",
          color: primaryColor,
          ontap: () {},
        )
      ],
    );
  }
}
//pin code field

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
//sign in positioned text

class signInPositionedText extends StatelessWidget {
  const signInPositionedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "text_dont_have_account",
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: size15, color: grey_color, fontWeight: FontWeight.w400),
        ),
        textButton(
          text: "text_code_send",
          color: primaryColor,
          ontap: () {},
        )
      ],
    );
  }
}
//location diolog box button

class diologButton extends StatelessWidget {
  String? text;
  VoidCallback? ontap;
  Color? color;
  bool loading;
  var height;
  diologButton({
    this.text,
    this.ontap,
    this.loading = false,
    this.height = size40,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size10), color: color),
        child: Center(
          child: loading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  ),
                )
              : Text(
                  text.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: size12,
                      fontFamily: font_montserrat,
                      color: white_color,
                      fontWeight: FontWeight.w500),
                ),
        ),
      ).paddingAll(10),
    );
  }
}
//location show diolog box

class locationDiolog extends StatelessWidget {
  const locationDiolog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text(
        "text_diolog",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: size18,
            fontFamily: font_montserrat,
            fontWeight: FontWeight.w500),
      ),
      title: SvgPicture.asset("svg_location"),
      actions: [
        Row(
          children: [
            Expanded(
              child: diologButton(
                text: "text_diolog_cancel",
                color: blackColor,
                ontap: () {
                  finish(context);
                },
              ),
            ),
            Expanded(
              child: diologButton(
                text: "text_diolog_turnOn",
                color: primaryColor,
                ontap: () {
                  finish(context);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
//appbar text

class appbarText extends StatelessWidget {
  String? text;
  appbarText({
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: font_montserrat,
          color: black,
          fontSize: size18),
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
//home rich text

class HomeRichText extends StatelessWidget {
  const HomeRichText({
    super.key,
  });
  final _user = "user";
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: const [
          TextSpan(
            text: "Welcome to",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: size25,
            ),
          ),
          WidgetSpan(
              child: SizedBox(
            width: size5,
          )),
          TextSpan(
            text: "ZooBay",
            // text: viewModel.userProfile != null
            //     ? viewModel.userProfile!["displayName"]
            //     : "User",
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              fontSize: size25,
            ),
          ),
        ],
      ),
    ).paddingSymmetric(horizontal: size10);
  }
}
