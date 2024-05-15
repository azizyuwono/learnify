import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/appbar_widget.dart';
import 'package:learnify/widgets/button_widget.dart';
import 'package:learnify/widgets/checkbox.dart';

class EmailPreferencePage extends StatefulWidget {
  const EmailPreferencePage({super.key});

  @override
  State<EmailPreferencePage> createState() => _EmailPreferencePageState();
}

int currentIndex = 0;
bool isActive = false;

List<String> checked = [];

class _EmailPreferencePageState extends State<EmailPreferencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Email Preferences'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email Notification Settings',
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
                  'Customize your email preferences to control the frequency and type of notifications you receive from the platform, ensuring you stay informed without being overwhelmed',
                  style: TextStyle(
                    fontSize: 14,
                    color: greyColor,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                customCheck(
                  'Daily Digest',
                  'Receive a daily summary of platform activity, including updates on courses, discussions, and announcements.',
                  0,
                ),
                customCheck(
                  'Weekly Recap',
                  'Opt to receive a weekly recap email summarizing highlights from the past week, such as new courses, upcoming events, and popular discussions.',
                  1,
                ),
                customCheck(
                  'Course Updates',
                  'Choose to receive notifications about new course offerings, enrollment deadlines, and changes to course materials.',
                  2,
                ),
                customCheck(
                  'Assignment Reminders',
                  'Receive reminders for upcoming assignment due dates, ensuring you stay on track with coursework and deadlines.',
                  3,
                ),
                customCheck(
                  'Event Invitations',
                  'Choose to receive invitations to live webinars, workshops, or virtual events hosted on the platform.',
                  4,
                ),
                customCheck(
                  'Marketing Promotions',
                  'Select whether to receive promotional emails about special offers, discounts, or new features from the platform or its partners.',
                  7,
                ),
                const SizedBox(
                  height: 24,
                ),
                ButtonWidget(
                  width: double.infinity,
                  height: 50,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  label: 'Submit',
                  outlined: false,
                  size: 14,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customCheck(
    String title,
    String desc,
    int index,
  ) {
    return CustomCheckBox(
      title: title,
      desc: desc,
      selected: checked.contains(title[index]),
      onTap: () {
        onSelected(!checked.contains(title[index]), title[index]);
      },
    );
  }

  void onSelected(bool selected, String data) {
    if (selected == true) {
      setState(() {
        checked.add(data);
      });
    } else {
      setState(() {
        checked.remove(data);
      });
    }
  }
}
