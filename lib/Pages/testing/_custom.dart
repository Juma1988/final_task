import 'package:flutter/material.dart';
import 'package:graduation_project/core/design/app_outline_button.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return          Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 3,
          child: AppButton(
            label: '+',
            borderRadius: 0.0,
            outLineWidth: 2.0,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            onPress: () {},
          ),
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 3,
          child: AppButton(
            label: 'Reset',
            borderRadius: 0.0,
            outLineWidth: 2.0,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            onPress: () {},
          ),
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width / 3,
          child: AppButton(
            label: '-',
            borderRadius: 0.0,
            outLineWidth: 2.0,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            onPress: () {},
          ),
        ),
      ],
    );
  }
}