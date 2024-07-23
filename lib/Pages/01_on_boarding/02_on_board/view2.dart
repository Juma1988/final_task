import 'package:flutter/material.dart';
import 'package:graduation_project/core/design/app_image.dart';

class OnBoardingView2 extends StatefulWidget {
  const OnBoardingView2({super.key});

  @override
  State<OnBoardingView2> createState() => _OnBoardingView2State();
}

class _OnBoardingView2State extends State<OnBoardingView2> {
  int currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<String> images = [
    'on_boarding0.png',
    'on_boarding1.png',
    'on_boarding2.png'
  ];

  final List<Widget> titles = [
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

  final List<String> descriptions = [
    'Explore over 25,924 available job roles and upgrade your operator now.',
    'Immediately join us and start applying for the job you are interested in.',
    'The better the skills you have, the greater the good job opportunities for you.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: Text('Skip'))
        ],
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: 3,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppImage(images[index]),
                    Container(
                      height: 10.0,
                      child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, i) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == i ? 25.0 : 5.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  color: currentIndex == i
                                      ? Color(0xFF3367fe)
                                      : Color(0xFFadc8ff),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    titles[index],
                    Text(
                      descriptions[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    FilledButton(
                      onPressed: () {
                        if (currentIndex < 2) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          //todo
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(currentIndex == 2 ? 'Get Started' : 'Next'),
                          Icon(Icons.navigate_next_sharp),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
