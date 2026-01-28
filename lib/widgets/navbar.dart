import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';

class CustomNavBarItem extends StatelessWidget {
  final bool isSelected;
  final String icon;
  final String label;

  const CustomNavBarItem({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/$icon',
          width: 36,
          color: isSelected ? primaryColor : greyColor,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: isSelected ? primaryColor : greyColor,
          ),
        ),
      ],
    );
  }
}
