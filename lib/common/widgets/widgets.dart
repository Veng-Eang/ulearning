import 'package:esala/common/widgets/app_shadow.dart';
import 'package:esala/common/widgets/text_widgets.dart';
import 'package:esala/utils/app_colors.dart';
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
          color: AppColors.primaryText,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15.0),
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: textNomal(
          text: subTitle,
          fontSize: 16,
          color: AppColors.primarySecondaryElementText,
        ),
      ),
      _nextButton(),
    ],
  );
}

Widget _nextButton() {
  return GestureDetector(
    onTap: () {
      print("don't kick me");
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100.0, left: 25.0, right: 25.0),
      decoration: appBoxShadow(),
      child: Center(
        child: textNomal(
          text: "Next",
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    ),
  );
}
