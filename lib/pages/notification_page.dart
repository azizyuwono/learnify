import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';

import 'package:learnify/widgets/appbar_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Notifications'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Today',
              style: TextStyle(
                fontSize: 14,
                color: greyColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Image.asset('assets/notif_image.png'),
          ],
        ),
      )),
    );
  }
}
