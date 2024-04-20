import 'package:dots_indicator/dots_indicator.dart';
import 'package:esala/pages/notifier/welcome_notifier.dart';
import 'package:flutter/material.dart';
import 'package:esala/pages/welcome/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WelcomeScreen extends ConsumerWidget {
  WelcomeScreen({super.key});
  final PageController _pageController = PageController();
  // final indexProvider = StateProvider<int>((ref) => 0);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int index = ref.watch(indexDotProvider);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _pageController,
                  children: [
                    appOnboardingPage(
                      _pageController,
                      title: "First See Learning",
                      subTitle:
                          "Forget about of paer all knowledge in one learning",
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
                ),
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: index,
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
