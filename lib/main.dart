import 'package:esala/pages/sign_in/sign_in.dart';
import 'package:esala/pages/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 821),
      builder: (context, child) => MaterialApp(
        initialRoute: '/',
        routes: {
          'signin': (context) => const SignInScreen(),
        },
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        home: WelcomeScreen(),
      ),
    );
  }
}
