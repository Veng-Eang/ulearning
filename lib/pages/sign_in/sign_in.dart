import 'package:esala/common/utils/app_colors.dart';
import 'package:esala/common/widgets/text_widgets.dart';
import 'package:esala/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';

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
            children: [
              //log in button
              thirdPartyLogin(),
              //more log in options message
              textNomal(
                  text: "Or use your email account to login",
                  color: AppColors.primaryThreeElementText)
            ],
          ),
        ),
      ),
    );
  }
}
