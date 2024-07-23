import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PINConfirmView extends StatefulWidget {
  const PINConfirmView({super.key});

  @override
  State<PINConfirmView> createState() => _PINConfirmViewState();
}

class _PINConfirmViewState extends State<PINConfirmView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        // AppGoto(LoginView(), keepHistory: false);
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset('assets/lottie/lottie_01.json')),
    );
  }
}
