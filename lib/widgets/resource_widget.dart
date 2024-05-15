import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';

class ResourceWidget extends StatelessWidget {
  final String image;
  final String title;
  final String status;

  const ResourceWidget({
    super.key,
    required this.image,
    required this.title,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      // overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                      color: blackColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(status),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.more_vert,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
