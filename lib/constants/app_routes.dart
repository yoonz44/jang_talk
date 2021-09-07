import 'package:get/get.dart';
import 'package:jang_talk/screens/intro/intro.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: '/', page: () => IntroductionAnimationScreen()),
  ];
}
