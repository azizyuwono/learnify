import 'package:flutter/material.dart';

import '../styles/color.dart';

// ignore: non_constant_identifier_names
AppBar AppbarWidget(context, String label) {
  return AppBar(
    backgroundColor: whiteColor,
    leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back)),
    title: Text(
      label,
      style: const TextStyle(
        fontSize: 14,
        color: blackColor,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
