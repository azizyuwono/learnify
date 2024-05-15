import 'package:flutter/material.dart';
import 'package:learnify/pages/home/home_page.dart';
import 'package:learnify/pages/home/learning_page.dart';
import 'package:learnify/pages/home/profile_page.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/navbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

int currentIndex = 0;

List<String> icons = [
  'icon_home.png',
  'icon_learning.png',
  'icon_user.png',
];

List<String> labels = [
  'Home',
  'My Learning',
  'Profile',
];

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body(),
        bottomNavigationBar: Container(
          color: whiteColor,
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var i = 0; i + 1 <= icons.length; i++) ...[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = i;
                    });
                  },
                  child: CustomNavBarItem(
                      index: i, icon: icons[i], label: labels[i]),
                )
              ]
            ],
          ),
        ));
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const LearningPage();
      case 2:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }
}
