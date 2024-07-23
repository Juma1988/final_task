import 'package:flutter/material.dart';
import 'package:graduation_project/core/design/app_color_scheme.dart';
import 'Pages/01_on_boarding/01_splash/view.dart';
import 'Pages/01_on_boarding/02_on_board/view2.dart';
import 'core/design/app_navigator.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter 101",
      navigatorKey: navigatorKey,
      home: SafeArea(child: OnBoardingView2()),
      theme: lightMode,
      darkTheme: darkMode,
      // AppTheme.Light,
    ),
  );
}
