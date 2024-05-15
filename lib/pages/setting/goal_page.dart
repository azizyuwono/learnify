import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/appbar_widget.dart';
import 'package:learnify/widgets/button_widget.dart';
import 'package:learnify/widgets/radio_button.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

int currentIndex = 5;

class _GoalPageState extends State<GoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Learning Goals'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Set Your Learning Goals',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Define your objectives and aspirations to tailor your learning journey effectively. Learners who have set the goals are 75% more likely to complete the courses. You have the flexibility to modify it at any time.',
                style: TextStyle(
                  fontSize: 14,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomRadioButton(
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                label: 'Learn 2 days a week',
                selectedIndex: currentIndex,
                index: 0,
              ),
              CustomRadioButton(
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                label: 'Learn 3 days a week',
                selectedIndex: currentIndex,
                index: 1,
              ),
              CustomRadioButton(
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                label: 'Learn 4 days a week',
                selectedIndex: currentIndex,
                index: 2,
              ),
              CustomRadioButton(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                label: 'Learn 5 days a week',
                selectedIndex: currentIndex,
                index: 3,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ButtonWidget(
                        height: 50,
                        onTap: () {
                          setState(() {
                            currentIndex = 7;
                          });
                        },
                        label: 'Cancel',
                        outlined: true,
                        size: 14),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: ButtonWidget(
                        height: 50,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        label: 'Set Goal',
                        outlined: false,
                        size: 14),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
