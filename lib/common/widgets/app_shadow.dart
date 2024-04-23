import 'package:esala/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

BoxDecoration appBoxShadow({
  Color color = AppColors.primaryElement,
  double radius = 15,
  double sR = 1,
  double bR = 2,
  BoxBorder? border,
}) {
  return BoxDecoration(
      color: color,
      border: border,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: sR,
          blurRadius: bR,
          offset: Offset(0, 1),
        ),
      ]);
}

BoxDecoration appBoxDecorationTextField({
  Color color = AppColors.primaryBackground,
  double radius = 10,
  Color borderColor = AppColors.primaryFourElementText,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    border: Border.all(
      color: borderColor,
    ),
  );
}
