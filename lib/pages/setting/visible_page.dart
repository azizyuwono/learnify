import 'package:flutter/material.dart';

import '../../styles/color.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/radio_button.dart';

class VisiblePage extends StatefulWidget {
  const VisiblePage({super.key});

  @override
  State<VisiblePage> createState() => _VisiblePageState();
}

int currentIndex = 4;

class _VisiblePageState extends State<VisiblePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Profile Visibility'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Profile Visibility Settings',
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
                'Manage and control who can view your personal details on the platform.',
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
                label: 'Public',
                selectedIndex: currentIndex,
                index: 0,
              ),
              CustomRadioButton(
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                label: 'Private',
                selectedIndex: currentIndex,
                index: 1,
              ),
              CustomRadioButton(
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                label: 'Anonymouse',
                selectedIndex: currentIndex,
                index: 2,
              ),
              CustomRadioButton(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                label: 'Custom',
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
                            currentIndex = 5;
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
                        label: 'Save Changes',
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
