import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/assets/images.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/E-money_request.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/drawer.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/notification_screen.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final tabbarlist = ["E-Money to Cash", "Cash to E-Money"];
  @override
  Widget build(BuildContext context) {
    TabController control = TabController(length: 2, vsync: this);

    return Scaffold(
      drawer: const drawerbuild(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                const NotificationScreen().launch(context);
              },
              icon:
                  const Icon(Icons.notifications_outlined).paddingRight(size15))
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            image_map,
            fit: BoxFit.cover,
          ),
          CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      const Spacer(),
                      Image.asset(
                        image_current,
                        height: MediaQuery.sizeOf(context).height * .3,
                      ).paddingBottom(size30),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_searching,
                            size: size40,
                            color: primaryColor,
                          ),
                        ).paddingBottom(size30),
                      ),
                      Container(
                        // height: MediaQuery.sizeOf(context).height * .15,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: primaryColor.withOpacity(.5),
                            borderRadius: BorderRadius.circular(size10),
                            border: Border.all(width: 2, color: primaryColor)),
                        child: Center(
                          child: DefaultTabController(
                                  length: 2,
                                  child: Column(
                                    children: [
                                      TabBar(
                                          dividerColor: transparentColor,
                                          controller: control,
                                          indicatorSize:
                                              TabBarIndicatorSize.tab,
                                          labelPadding:
                                              const EdgeInsets.only(right: 6),
                                          labelColor: Colors.white,
                                          unselectedLabelColor: white,
                                          indicatorColor: primaryColor,
                                          indicator: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          tabs: [
                                            GestureDetector(
                                              onTap: () {
                                                const CashRequest()
                                                    .launch(context);
                                              },
                                              child: const Tab(
                                                text: "E-Money to Cash",
                                              ).paddingLeft(10),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                const CashRequest()
                                                    .launch(context);
                                              },
                                              child: const Tab(
                                                text: "Cash to E-Money",
                                              ).paddingLeft(10),
                                            )
                                          ])
                                    ],
                                  ))
                              .paddingSymmetric(
                                  vertical: 20, horizontal: size10),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
