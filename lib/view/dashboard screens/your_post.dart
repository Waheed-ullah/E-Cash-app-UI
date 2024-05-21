import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/update_post.dart';
import 'package:nb_utils/nb_utils.dart';

class YourPosts extends StatefulWidget {
  const YourPosts({super.key});

  @override
  State<YourPosts> createState() => _YourPostsState();
}

class _YourPostsState extends State<YourPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: text("Your Posts"),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: 12,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return PostContainer(
                  title: "Muzahir Hussain",
                  desc: "Cash to E-Money\nKDA, kohat kpk, Pakistan ",
                ).paddingBottom(size14);
              },
            )
          ],
        ).paddingAll(size20),
      ),
    );
  }
}
//

class PostContainer extends StatelessWidget {
  var title, desc;
  Color? color;
  PostContainer({
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
              .paddingBottom(size5),
          text("Amount Rs 12000", fontWeight: FontWeight.w400, fontSize: size14)
              .paddingBottom(size20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  toast("Post Deleted", bgColor: redColor);
                  finish(context);
                },
                child: Container(
                  height: size50,
                  width: MediaQuery.sizeOf(context).width * .33,
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(size12),
                      color: redColor),
                  child: Center(
                      child: text("Delete",
                          fontWeight: FontWeight.w500,
                          textColor: white,
                          fontSize: size15)),
                ),
              ),
              const SizedBox(
                width: size20,
              ),
              GestureDetector(
                onTap: () {
                  const UpdatePostScreen().launch(context);
                },
                child: Container(
                  height: size50,
                  width: MediaQuery.sizeOf(context).width * .33,
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(size12),
                      color: white),
                  child: Center(
                      child: text("Update",
                          fontWeight: FontWeight.w500,
                          textColor: primaryColor,
                          fontSize: size15)),
                ),
              ),
            ],
          )
        ],
      ).paddingAll(size12),
    );
  }
}
