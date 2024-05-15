import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';

class ButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final Function()? onTap;
  final String label;
  final bool outlined;
  final double? size;
  const ButtonWidget({
    super.key,
    this.width,
    this.height,
    required this.onTap,
    required this.label,
    required this.outlined,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: outlined ? primaryColor : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: outlined ? whiteColor : primaryColor,
        ),
        onPressed: onTap,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
              color: outlined ? primaryColor : whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
