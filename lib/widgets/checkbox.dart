import 'package:flutter/material.dart';

import '../styles/color.dart';

class CustomCheckBox extends StatefulWidget {
  final String title;
  final String desc;
  final bool selected;
  final Function()? onTap;
  const CustomCheckBox({
    super.key,
    required this.title,
    required this.desc,
    required this.selected,
    required this.onTap,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: whiteColor,
          margin: const EdgeInsets.only(bottom: 16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: widget.selected ? primaryColor : blackColor,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:
                          widget.selected ? primaryColor : Colors.transparent,
                    ),
                    child: widget.selected
                        ? Image.asset(
                            'assets/icon_check.png',
                            width: 18,
                          )
                        : const Center(),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 14,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        widget.desc,
                        style: const TextStyle(
                          fontSize: 12,
                          color: greyColor,
                        ),
                      )
                    ],
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
