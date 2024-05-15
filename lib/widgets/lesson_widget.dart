import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';

class LessonWidget extends StatelessWidget {
  final int number;
  final String title;
  final String time;
  final bool done;
  const LessonWidget({
    super.key,
    required this.number,
    required this.title,
    required this.time,
    required this.done,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      child: Row(
        children: [
          Text(
            '0$number',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: lightColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '$time min',
                style: const TextStyle(
                  fontSize: 10,
                  color: blackColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          done
              ? Image.asset(
                  'assets/icon_done.png',
                  width: 24,
                )
              : Container(),
        ],
      ),
    );
  }
}
