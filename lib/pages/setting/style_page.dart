import 'package:flutter/material.dart';

import '../../styles/color.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/radio_button.dart';

class StylePage extends StatefulWidget {
  const StylePage({super.key});

  @override
  State<StylePage> createState() => _StylePageState();
}

int currentIndex = 7;

class _StylePageState extends State<StylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      appBar: AppbarWidget(context, 'Learning Style'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Choose Your Learning Style',
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
                  'Customize your learning experience by selecting the mode that best suits your preferences.',
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
                  label: 'Audio based learning',
                  selectedIndex: currentIndex,
                  index: 0,
                ),
                CustomRadioButton(
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  label: 'Video based learning',
                  selectedIndex: currentIndex,
                  index: 1,
                ),
                CustomRadioButton(
                  onTap: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  label: 'Live interactive sessions',
                  selectedIndex: currentIndex,
                  index: 2,
                ),
                CustomRadioButton(
                  onTap: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  label: 'Recorded content',
                  selectedIndex: currentIndex,
                  index: 3,
                ),
                CustomRadioButton(
                  onTap: () {
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  label: 'Text based learning',
                  selectedIndex: currentIndex,
                  index: 4,
                ),
                CustomRadioButton(
                  onTap: () {
                    setState(() {
                      currentIndex = 5;
                    });
                  },
                  label: 'Project based learning',
                  selectedIndex: currentIndex,
                  index: 5,
                ),
                CustomRadioButton(
                  onTap: () {
                    setState(() {
                      currentIndex = 6;
                    });
                  },
                  label: 'Peer to peer learning',
                  selectedIndex: currentIndex,
                  index: 6,
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
                              currentIndex = 8;
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
      ),
    );
  }
}
