import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/thanks_screen.dart';
import 'package:nb_utils/nb_utils.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with TickerProviderStateMixin {
  final tabbarlist = ["E-Money to Cash", "Cash to E-Money"];
  @override
  Widget build(BuildContext context) {
    TabController control = TabController(length: 2, vsync: this);
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: text("History", fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size8),
                        color: primaryColor.withOpacity(.5)),
                    height: size50,
                    child: TabBar(
                        onTap: (value) {
                          setState(() {});
                        },
                        dividerColor: transparentColor,
                        controller: control,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelPadding: const EdgeInsets.only(right: 6),
                        labelColor: Colors.white,
                        unselectedLabelColor: white,
                        indicatorColor: primaryColor,
                        indicator: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        tabs: [
                          text("E-Money to Cash", textColor: white),
                          text("Cash to E-Money", textColor: white),
                        ]),
                  )
                ],
              )).paddingSymmetric(vertical: 20),
          Expanded(
              child: TabBarView(controller: control, children: [
            ListView.builder(
              itemCount: 13,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    const ThanksScreen().launch(context);
                  },
                  child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: primaryColor, width: 2.0),
                              borderRadius: BorderRadius.circular(size12),
                              color: white),
                          child: Center(
                              child: ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            title: text("Henry",
                                fontWeight: FontWeight.w500, fontSize: size15),
                            subtitle: text("Mustang Shelby GT",
                                fontWeight: FontWeight.w400, fontSize: size14),
                            trailing: text("Done",
                                fontWeight: FontWeight.w600,
                                textColor: primaryColor,
                                fontSize: size14),
                          ).paddingSymmetric(horizontal: size10)))
                      .paddingBottom(size15),
                );
              },
            ).paddingRight(size5),
            ListView.builder(
              itemCount: 13,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    const ThanksScreen().launch(context);
                  },
                  child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: primaryColor, width: 2.0),
                              borderRadius: BorderRadius.circular(size12),
                              color: white),
                          child: Center(
                              child: ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            title: text("Willium",
                                fontWeight: FontWeight.w500, fontSize: size15),
                            subtitle: text("Mustang Shelby GT",
                                fontWeight: FontWeight.w400, fontSize: size14),
                            trailing: text("Done",
                                fontWeight: FontWeight.w600,
                                textColor: primaryColor,
                                fontSize: size14),
                          ).paddingSymmetric(horizontal: size10)))
                      .paddingBottom(size15),
                );
              },
            ),
          ]))
        ],
      ).paddingSymmetric(horizontal: 15),
    );
  }
}
