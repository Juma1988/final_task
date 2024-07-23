import 'package:flutter/material.dart';
import 'package:graduation_project/core/design/app_image.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;

  final List<Widget> title = [
    RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          TextSpan(text: 'Find a job, and '),
          TextSpan(
            text: 'start ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: '\n'),
          TextSpan(
            text: 'building ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: 'your career '),
          TextSpan(text: '\n'),
          TextSpan(text: 'from now on'),
        ],
      ),
    ),
    RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          TextSpan(text: 'Hundreds of jobs are\nwaiting for you to '),
          TextSpan(
            text: 'join\ntogether',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    ),
    RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          TextSpan(text: 'Get the best '),
          TextSpan(
            text: 'choice for\nthe job ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: "you've always\ndreamed of"),
        ],
      ),
    ),
  ];
  final List<String> description = [
    'Explore over 25,924 available job roles and upgrade your operator now.',
    'Immediately join us and start applying for the job you are interested in.',
    'The better the skills you have, the greater the good job opportunities for you.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: Image.asset(
        //   'assets/images/Logo.png',
        //   height: 19,
        //   width: 80,
        //   fit: BoxFit.contain,
        // ),
        toolbarHeight: 100,
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: Text(
                'skip',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(color: Colors.red,child: AppImage('on_boarding$currentIndex.png'),),
            SizedBox(height: 24),
            title[currentIndex],
            SizedBox(height: 12),
            Text(description[currentIndex], style:
            TextStyle(color: Color(0xFF6B7280), fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
