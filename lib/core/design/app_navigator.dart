import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future AppGoto(Widget page, {
  bool keepHistory = true,
  bool isReplacement = false,
}) {
  if (isReplacement) {
    return Navigator.pushReplacement(
      navigatorKey.currentContext!,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
  return Navigator.pushAndRemoveUntil(
    navigatorKey.currentContext!,
    MaterialPageRoute(
      builder: (Context) => page,
    ),
        (route) => keepHistory,
  );
}

void showMsg(String msg, {int type = 1}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar
    (content: Text(msg,textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
    duration: Duration(seconds: 5),showCloseIcon: false,
    backgroundColor: type == 1
        ? Colors.green
        : type ==0
    ? Colors.orange
        : Colors.red,));
}


//
