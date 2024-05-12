import 'dart:io';

import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/colors.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/account_screen.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/chatting.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/history.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/home_screen.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const ChatScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_outlined),
            title: text("Home", textColor: black),
            selectedColor: primaryColor,
          ),

          /// order
          SalomonBottomBarItem(
            icon: const Icon(Icons.payment_outlined),
            title: text("History", textColor: black),
            selectedColor: primaryColor,
          ),

          /// chat
          SalomonBottomBarItem(
            icon: const Icon(Icons.chat),
            title: text("Chat", textColor: black),
            selectedColor: primaryColor,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person_2_outlined),
            title: text("profile", textColor: black),
            selectedColor: primaryColor,
          ),
        ],
      ),
      // ignore: deprecated_member_use
      body: WillPopScope(
        onWillPop: () async {
          if (currentIndex != 0) {
            currentIndex = 0;
            setState(() {});
          } else {
            // Show exit confirmation dialog
            return await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Exit the app?'),
                  content: const Text('Are you sure you want to exit the app?'),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: text("NO")),
                    TextButton(
                        onPressed: () {
                          exit(0);
                        },
                        child: text("Yes")),
                  ],
                );
              },
            );
          }
          return false;
        },
        child: PageView(
          children: [screens[currentIndex]],
        ),
      ),
    );
  }
}
