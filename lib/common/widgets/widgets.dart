import 'package:esala/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

Widget appOnboardingPage({
  required String title,
  required String subTitle,
  required String imagePath,
}) {
  return Column(
    children: [
      Image.asset(imagePath),
      Container(
        margin: const EdgeInsets.only(top: 15.0),
        child: textNomal(
          text: title,
          fontSize: 24.0,
          color: Colors.blue,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15.0),
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: textNomal(
          text: subTitle,
          fontSize: 16,
        ),
      )
    ],
  );
}
