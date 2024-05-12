import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/images.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/components/build_button.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/dashboard.dart';
import 'package:nb_utils/nb_utils.dart';

class OrderConform extends StatefulWidget {
  const OrderConform({super.key});

  @override
  State<OrderConform> createState() => _OrderConformState();
}

class _OrderConformState extends State<OrderConform> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Image.asset(
                  image_thanks,
                  height: size80,
                  width: size80,
                ).paddingBottom(size20),
                text("Thank You", fontWeight: FontWeight.w500, fontSize: size16)
                    .paddingBottom(size20),
                text("Your request has been acknowledged by  Emily Grace",
                        fontWeight: FontWeight.w400,
                        fontSize: size13,
                        align: TextAlign.center,
                        textColor: gray)
                    .paddingBottom(size20),
                const Spacer(
                  flex: 1,
                ),
                BuildButton(
                        onPressed: () {
                          const Dashboard().launch(context);
                        },
                        text: "Conform Order")
                    .paddingBottom(size30)
              ],
            ).paddingAll(size20),
          )
        ],
      ),
    );
  }
}
