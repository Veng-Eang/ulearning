import 'package:esala/common/utils/app_colors.dart';
import 'package:esala/common/widgets/text_widgets.dart';
import 'package:esala/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //log in button
              thirdPartyLogin(),
              //more log in options message
              Center(
                child: textNomal(
                  text: "Or use your email account to login",
                  color: AppColors.primaryThreeElementText,
                ),
              ),
              SizedBox(height: 50.h),
              appTextField(
                  title: "Email",
                  icon: "assets/icons/user.png",
                  hintText: "Please enter your email"),
              SizedBox(height: 20.h),
              appTextField(
                  title: "Password",
                  icon: "assets/icons/lock.png",
                  hintText: "Please enter your password",
                  obscureText: true),
            ],
          ),
        ),
      ),
    );
  }
}
