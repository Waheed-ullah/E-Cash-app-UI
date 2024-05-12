import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/images.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/order_conform.dart';
import 'package:nb_utils/nb_utils.dart';

class HelperDetails extends StatefulWidget {
  const HelperDetails({super.key});

  @override
  State<HelperDetails> createState() => _HelperDetailsState();
}

class _HelperDetailsState extends State<HelperDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text("Emily Grace",
                    fontWeight: FontWeight.bold, fontSize: size18),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: size20,
                    ).paddingRight(size10),
                    text("4.9 (531 reviews)",
                        fontWeight: FontWeight.w400,
                        fontSize: size13,
                        textColor: gray),
                  ],
                ).paddingBottom(size40),
                const Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: primaryColor,
                    radius: size60,
                    backgroundImage: AssetImage(image_profile),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                text("Marchant info",
                        fontWeight: FontWeight.w500, fontSize: size16)
                    .paddingBottom(size20),
                GestureDetector(
                  onTap: () {
                    const HelperDetails().launch(context);
                  },
                  child: Container(
                    height: size50,
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor, width: 2.0),
                        borderRadius: BorderRadius.circular(size12),
                        color: primaryColor.withOpacity(.3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text("Rating",
                            fontWeight: FontWeight.w400, fontSize: size13),
                        text("4.9",
                            fontWeight: FontWeight.w400, fontSize: size13),
                      ],
                    ).paddingSymmetric(horizontal: size10),
                  ).paddingBottom(size15),
                ),
                GestureDetector(
                  onTap: () {
                    const HelperDetails().launch(context);
                  },
                  child: Container(
                    height: size50,
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor, width: 2.0),
                        borderRadius: BorderRadius.circular(size12),
                        color: primaryColor.withOpacity(.3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text("Reviews",
                            fontWeight: FontWeight.w400, fontSize: size13),
                        text("531",
                            fontWeight: FontWeight.w400, fontSize: size13),
                      ],
                    ).paddingSymmetric(horizontal: size10),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  children: [
                    BuildButton(
                            width: MediaQuery.sizeOf(context).width * .4,
                            onPressed: () {
                              finish(context);
                            },
                            text: "Cancel")
                        .paddingRight(size10),
                    BuildButton(
                        width: MediaQuery.sizeOf(context).width * .4,
                        onPressed: () {
                          const OrderConform().launch(context);
                        },
                        text: "Order Now"),
                  ],
                ).paddingSymmetric(vertical: size20),
              ],
            ).paddingAll(size20),
          )
        ],
      ),
    );
  }
}
