import 'package:flutter/material.dart';
import 'package:learnify/pages/main_page.dart';
import 'package:learnify/styles/color.dart';

class CustomNavBarItem extends StatefulWidget {
  final int currentIndex = 0;
  final int index;
  final String icon;
  final String label;
  const CustomNavBarItem({
    super.key,
    required this.index,
    required this.icon,
    required this.label,
  });

  @override
  State<CustomNavBarItem> createState() => _CustomNavBarItemState();
}

class _CustomNavBarItemState extends State<CustomNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/${widget.icon}',
          width: 36,
          color: currentIndex == widget.index ? primaryColor : greyColor,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: currentIndex == widget.index ? primaryColor : greyColor,
          ),
        ),
      ],
    );
  }
}
