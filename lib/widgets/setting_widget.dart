import 'package:flutter/material.dart';

import '../styles/color.dart';

class SettingWidget extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const SettingWidget({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: whiteColor,
          margin: const EdgeInsets.symmetric(vertical: 14),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: blackColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
