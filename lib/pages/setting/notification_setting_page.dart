import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/widgets/appbar_widget.dart';
import 'package:learnify/widgets/button_widget.dart';

import '../../styles/color.dart';

class NotificationSettingPage extends StatefulWidget {
  const NotificationSettingPage({super.key});

  @override
  State<NotificationSettingPage> createState() =>
      _NotificationSettingPageState();
}

bool isSwitch = false;
List<String> checked = [];

class _NotificationSettingPageState extends State<NotificationSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Notification Settings'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notification Preferences',
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
              'Customize your notification preferences to stay informed',
              style: TextStyle(
                fontSize: 14,
                color: greyColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            switchButton('Course Updates', 0),
            switchButton('Assignment Reminders', 1),
            switchButton('Grading & Feedback', 2),
            switchButton('Event Invitations', 3),
            switchButton('Announcements from the instructors', 4),
            const SizedBox(
              height: 10,
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
      )),
    );
  }

  Widget switchButton(
    String label,
    int index,
  ) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: whiteColor,
        margin: const EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
              CupertinoSwitch(
                  activeColor: primaryColor,
                  value: checked.contains(label[index]),
                  onChanged: (value) {
                    onSelected(value, label[index]);
                  }),
            ],
          ),
        ),
      ),
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
