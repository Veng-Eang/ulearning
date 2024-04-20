import 'package:flutter/material.dart';
import 'package:esala/common/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              appOnboardingPage(
                _pageController,
                title: "First See Learning",
                subTitle: "Forget about of paer all knowledge in one learning",
                imagePath: "assets/images/reading.png",
                index: 1,
              ),
              appOnboardingPage(
                _pageController,
                title: "Connect With Everyone",
                subTitle:
                    "Always keep in touch with your tutor and friends. Let's get connected",
                imagePath: "assets/images/man.png",
                index: 2,
              ),
              appOnboardingPage(
                _pageController,
                title: "Always Fascinated Learning",
                subTitle:
                    "Anywhere, anytime. The time is at your discretion. So study wherever",
                imagePath: "assets/images/boy.png",
                index: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
