import 'package:flutter/material.dart';
import 'package:esala/common/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              appOnboardingPage(
                title: "First See Learning",
                subTitle: "Forget about of paer all knowledge in one learning",
                imagePath: "assets/images/reading.png",
              ),
              appOnboardingPage(
                title: "Connect With Everyone",
                subTitle:
                    "Always keep in touch with your tutor and friends. Let's get connected",
                imagePath: "assets/images/man.png",
              ),
              appOnboardingPage(
                title: "Always Fascinated Learning",
                subTitle:
                    "Anywhere, anytime. The time is at your discretion. So study wherever",
                imagePath: "assets/images/boy.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
