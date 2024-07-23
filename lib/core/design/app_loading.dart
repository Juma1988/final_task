import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white ,alignment: AlignmentDirectional.bottomStart,
        child: Lottie.asset('assets/lottie/lottie_0$lottie.json', height: 130, width: 130,));
  }
}
final int lottie = Random().nextInt(5);