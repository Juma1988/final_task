import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/design/app_color_scheme.dart';

import 'Pages/testing/testing.dart';
import 'core/design/app_navigator.dart';

main() {
  runApp(
    ScreenUtilInit(
      child: SafeArea(child: Counter()),
      designSize: Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter 101",
        navigatorKey: navigatorKey,
        home: child,
        theme: lightMode,
        darkTheme: darkMode,
        // AppTheme.Light,
      ),
    ),
  );
}
