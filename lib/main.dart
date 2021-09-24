import 'package:flutter/material.dart';
import 'package:jang_talk/constants/constants.dart';
import 'package:jang_talk/providers/app_theme.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  runApp(MyApp(prefs.getBool('isIntro') ?? false));
}

class MyApp extends StatelessWidget {
  final bool isIntro;

  MyApp(this.isIntro);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '장톡',
      debugShowCheckedModeBanner: false,
      initialRoute: this.isIntro ? '/home' : '/',
      getPages: AppRoutes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.android,
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
