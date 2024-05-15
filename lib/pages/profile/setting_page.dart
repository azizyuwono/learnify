import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/appbar_widget.dart';
import 'package:learnify/widgets/setting_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Settings'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'LEARNING PREFERENCES',
                style: TextStyle(
                  fontSize: 14,
                  color: greyColor,
                ),
              ),
              SettingWidget(
                label: 'Learning Goals',
                onTap: () => Navigator.pushNamed(context, '/goal'),
              ),
              SettingWidget(
                label: 'Learning Style',
                onTap: () => Navigator.pushNamed(context, '/style'),
              ),
              const Text(
                'PRIVACY SETTINGS',
                style: TextStyle(
                  fontSize: 14,
                  color: greyColor,
                ),
              ),
              SettingWidget(
                label: 'Profile Visibility',
                onTap: () => Navigator.pushNamed(context, '/visible'),
              ),
              const Text(
                'ACCOUNT SETTINGS',
                style: TextStyle(
                  fontSize: 14,
                  color: greyColor,
                ),
              ),
              SettingWidget(
                label: 'Change Password',
                onTap: () => Navigator.pushNamed(context, '/changepassword'),
              ),
              SettingWidget(
                label: 'Email Preferences',
                onTap: () => Navigator.pushNamed(context, '/emailpref'),
              ),
              SettingWidget(
                label: 'Notification Settings',
                onTap: () => Navigator.pushNamed(context, '/notifset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
