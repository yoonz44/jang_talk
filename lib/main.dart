import 'package:flutter/material.dart';
import 'package:jang_talk/src/screens/intro/introduction_animation_screen.dart';
import 'package:jang_talk/src/providers/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.android,
      ),
      home: IntroductionAnimationScreen(),
    );
  }
}
