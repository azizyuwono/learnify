import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/achievement_widget.dart';
import 'package:learnify/widgets/progress_widget.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

late TabController tabController;

class _LearningPageState extends State<LearningPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppBar(
        backgroundColor: whiteColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'My Learnings',
          style: TextStyle(
            fontSize: 16,
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: primaryColor,
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 14,
                  color: blackColor,
                ),
                controller: tabController,
                tabs: const [
                  Tab(
                    text: 'In Progress',
                  ),
                  Tab(
                    text: 'Completed',
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                  child: TabBarView(
                controller: tabController,
                children: [
                  progressTab(),
                  completedTab(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget progressTab() {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ProgressWidget(
              image: 'assets/image3.png',
              title: 'Motion Graphics Introduction',
              progress: 30,
              status: '3 of 10 Lessons Completed'),
        ],
      ),
    );
  }

  Widget completedTab() {
    return const SingleChildScrollView(
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
    );
  }
}
