import 'package:esala/common/utils/app_colors.dart';
import 'package:esala/common/widgets/app_shadow.dart';
import 'package:esala/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appButton({
  required String text,
  double width = 325,
  double height = 50,
  bool isLogin = true,
}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(
          color: isLogin ? AppColors.primaryElement : Colors.white,
          border: Border.all(
            color: AppColors.primaryFourElementText,
          )),
      child: Center(
        child: textNomal(
            text: text,
            color:
                isLogin ? AppColors.primaryBackground : AppColors.primaryText,
            fontSize: 16),
      ),
    ),
  );
}
