import 'package:flutter/material.dart';
import 'package:graduation_project/core/design/app_outline_button.dart';
import '_custom.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Count',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 24),),
          Text('0',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 24),),
          SizedBox(height: MediaQuery.of(context).size.height / 2.4,),
          buttons(),
        ],
      ),
    );
  }
}
