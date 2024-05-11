import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:nb_utils/nb_utils.dart';

class EMoneyRequest extends StatefulWidget {
  const EMoneyRequest({super.key});

  @override
  State<EMoneyRequest> createState() => _EMoneyRequestState();
}

class _EMoneyRequestState extends State<EMoneyRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text("Request For E-Money"),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              padding: const EdgeInsets.only(bottom: size10),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return requestCash(
                  title: "XYZ helper",
                  desc: "information about helper in one line",
                ).paddingBottom(size15);
              },
            ),
          )
        ],
      ).paddingAll(size20),
    );
  }
}
//

class requestCash extends StatelessWidget {
  var title, desc;
  Color? color;
  requestCash({
    this.title,
    this.desc,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor),
        color: primaryColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(size12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(title, fontWeight: FontWeight.bold, fontSize: size16)
              .paddingBottom(size10),
          text(desc,
                  fontWeight: FontWeight.w400,
                  textColor: gray,
                  fontSize: size14)
              .paddingBottom(size5),
          text("800m (5 mins away)",
                  fontWeight: FontWeight.w400, fontSize: size14)
              .paddingBottom(size20),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: size50,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2.0),
                  borderRadius: BorderRadius.circular(size12),
                  color: white),
              child: Center(
                  child: text("View More",
                      fontWeight: FontWeight.w500,
                      textColor: primaryColor,
                      fontSize: size15)),
            ),
          )
        ],
      ).paddingAll(size12),
    );
  }
}
