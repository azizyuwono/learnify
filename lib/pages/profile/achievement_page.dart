import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/achievement_widget.dart';
import 'package:learnify/widgets/appbar_widget.dart';

class AchievementPage extends StatelessWidget {
  const AchievementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Achievement'),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                AchievementWidget(
                  image: 'assets/image1.png',
                  label: 'UI UX Design Principles',
                ),
                AchievementWidget(
                  image: 'assets/image2.png',
                  label: 'Grapic Design Fundamentals',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
