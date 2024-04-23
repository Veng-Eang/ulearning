import 'package:esala/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textNomal({required String text, double? fontSize, Color? color}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget textUnderline({required String text}) {
  return GestureDetector(
    onTap: () {},
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12.sp,
        color: AppColors.primaryText,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}
