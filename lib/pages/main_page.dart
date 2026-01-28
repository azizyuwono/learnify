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

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  static const List<String> _icons = [
    'icon_home.png',
    'icon_learning.png',
    'icon_user.png',
  ];

  static const List<String> _labels = [
    'Home',
    'My Learning',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _body(),
        bottomNavigationBar: Container(
          color: whiteColor,
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var i = 0; i < _icons.length; i++) ...[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = i;
                    });
                  },
                  child: CustomNavBarItem(
                    isSelected: _currentIndex == i,
                    icon: _icons[i],
                    label: _labels[i],
                  ),
                )
              ]
            ],
          ),
        ));
  }

  Widget _body() {
    switch (_currentIndex) {
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
