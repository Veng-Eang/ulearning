import 'package:esala/common/widgets/app_shadow.dart';
import 'package:esala/common/widgets/text_widgets.dart';
import 'package:esala/common/utils/app_colors.dart';
import 'package:esala/pages/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

Widget appOnboardingPage(
  PageController pageController, {
  required String title,
  required String subTitle,
  required String imagePath,
  required int index,
  required BuildContext context,
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
      _nextButton(index, pageController, context),
    ],
  );
}

Widget _nextButton(
    int index, PageController pageController, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceIn,
        );
      } else {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SignInScreen(),
          ),
        );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100.0, left: 25.0, right: 25.0),
      decoration: appBoxShadow(),
      child: Center(
        child: textNomal(
          text: index < 3 ? "Next" : "Get Start",
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    ),
  );
}
