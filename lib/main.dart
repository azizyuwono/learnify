import 'package:flutter/material.dart';
import 'package:learnify/pages/login_page.dart';
import 'package:learnify/pages/main_page.dart';
import 'package:learnify/pages/notification_page.dart';
import 'package:learnify/pages/profile/achievement_page.dart';
import 'package:learnify/pages/profile/editprofile_page.dart';
import 'package:learnify/pages/profile/setting_page.dart';
import 'package:learnify/pages/register_page.dart';
import 'package:learnify/pages/setting/change_password_page.dart';
import 'package:learnify/pages/setting/email_preference_page.dart';
import 'package:learnify/pages/setting/goal_page.dart';
import 'package:learnify/pages/setting/notification_setting_page.dart';
import 'package:learnify/pages/setting/style_page.dart';
import 'package:learnify/pages/setting/visible_page.dart';
import 'package:learnify/pages/splash_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/main': (context) => const MainPage(),
        '/notif': (context) => const NotificationPage(),
        '/editprofile': (context) => const EditprofilePage(),
        '/achievement': (context) => const AchievementPage(),
        '/setting': (context) => const SettingPage(),
        '/goal': (context) => const GoalPage(),
        '/style': (context) => const StylePage(),
        '/visible': (context) => const VisiblePage(),
        '/changepassword': (context) => const ChangePasswordPage(),
        '/emailpref': (context) => const EmailPreferencePage(),
        '/notifset': (context) => const NotificationSettingPage(),
      },
    );
  }
}
