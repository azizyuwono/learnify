import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/button_widget.dart';

class AchievementWidget extends StatelessWidget {
  final String image;
  final String label;
  const AchievementWidget({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Beginner',
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ButtonWidget(
                    width: double.infinity,
                    height: 50,
                    onTap: () {},
                    label: 'Download Certificate',
                    outlined: false,
                    size: 14)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
