import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/assets/strings.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:nb_utils/nb_utils.dart';

//profile screen circle avator
class profileScreenAvator extends StatefulWidget {
  IconData? icon;
  VoidCallback? ontap, ontap2;
  var image;
  profileScreenAvator({
    this.icon,
    this.ontap,
    this.image,
    this.ontap2,
    super.key,
  });

  @override
  State<profileScreenAvator> createState() => _profileScreenAvatorState();
}

class _profileScreenAvatorState extends State<profileScreenAvator> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        GestureDetector(onTap: widget.ontap, child: widget.image),
        Container(
          height: size35,
          width: size35,
          decoration: BoxDecoration(
              border: Border.all(color: white_color),
              shape: BoxShape.circle,
              color: primaryColor),
          child: Center(
              child: IconButton(
                  onPressed: widget.ontap2,
                  icon: Icon(
                    widget.icon,
                    color: whiteSmoke,
                    size: size15,
                  ))),
        )
      ],
    );
  }
}
//product details screen indicatior

class indicator extends StatelessWidget {
  const indicator({
    this.isActive = false,
    super.key,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: size10,
      width: isActive == true ? size25 : size10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size10), color: white_color),
    );
  }
}

//profile screen row
class ProfileRow extends StatelessWidget {
  VoidCallback? ontap;
  String? rowText;
  String? icon1;
  ProfileRow({this.rowText, this.ontap, this.icon1, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Row(
          children: [
            SvgPicture.asset(icon1!, width: 23, height: 23, color: grey_color),
            const SizedBox(width: size20),
            text(rowText,
                fontSize: size15,
                fontFamily: font_montserrat,
                fontWeight: FontWeight.w400),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: grey_color,
              size: size13,
            )
          ],
        )).paddingBottom(size10);
  }
}

//indicator
class Indicator extends StatelessWidget {
  const Indicator({
    this.isActive = false,
    super.key,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: size10,
      width: isActive == true ? size25 : size10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size10), color: white_color),
    );
  }
}

class selling_container extends StatelessWidget {
  VoidCallback? ontap;
  selling_container({
    this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size100,
      width: h1,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(size10)),
      child: IconButton(
          onPressed: ontap,
          icon: const Icon(
            Icons.camera_alt,
            color: white_color,
          )),
    );
  }
}
//build Notification screen

class BuildNotification extends StatelessWidget {
  String? image;
  Color? color;
  String? notification_title;
  String? notification_desc;

  BuildNotification({
    required this.color,
    required this.image,
    required this.notification_title,
    required this.notification_desc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            // const EmptyNotificationScreen().launch(context);
          },
          child: Row(
            children: [
              Container(
                height: size30,
                width: size30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: white,
                ),
                child: Center(
                    child: Image(
                  image: AssetImage(image.toString()),
                  height: size30,
                  width: size30,
                )),
              ),
              const SizedBox(
                width: size10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: notification_title.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: size16,
                            color: Colors.black),
                      ),
                      const WidgetSpan(
                        child: SizedBox(
                          width: size15,
                        ),
                      ),
                      const TextSpan(
                        text: "2023/11/04",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                    ]),
                  ),
                  Text(
                    notification_desc.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: size20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: size16),
          child: Divider(
            thickness: 1,
            color: Color.fromARGB(255, 243, 234, 234),
          ),
        )
      ],
    );
  }
}
