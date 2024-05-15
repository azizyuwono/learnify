import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';

class CustomRadioButton extends StatelessWidget {
  final String label;
  final int selectedIndex;
  final int index;
  final Function()? onTap;
  const CustomRadioButton({
    super.key,
    required this.label,
    required this.selectedIndex,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: whiteColor,
          margin: const EdgeInsets.only(bottom: 16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: selectedIndex == index ? primaryColor : blackColor,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? primaryColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
