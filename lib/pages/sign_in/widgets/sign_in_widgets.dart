import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:esala/common/utils/app_colors.dart';
import 'package:esala/common/widgets/text_widgets.dart';

AppBar buildAppbar() {
  return AppBar(
    title: textNomal(text: "LogIn", fontSize: 16, color: AppColors.primaryText),
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.h,
      child: Image.asset(imagePath),
    ),
  );
}
