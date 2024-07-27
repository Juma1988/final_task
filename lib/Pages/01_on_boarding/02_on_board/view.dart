import 'package:flutter/material.dart';
import 'package:graduation_project/core/design/app_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: AppImage(
          'Logo.png',
          width: 80,
          height: 20,
        ),
        actions: [
          TextButton(
              onPressed: () => controller.jumpToPage(2), child: Text('skip'))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
              urlImage: 'assets/images/on_boarding0.png',
              title: RichText(
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
              subtitle:
                  'Explore over 25,924 available job roles and upgrade your operator now.',
            ),
            buildPage(
              urlImage: 'assets/images/on_boarding1.png',
              title: RichText(
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
              subtitle:
                  'Immediately join us and start applying for the job you are interested in.',
            ),
            buildPage(
              urlImage: 'assets/images/on_boarding2.png',
              title: RichText(
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
              subtitle:
                  'The better the skills you have, the greater the good job opportunities for you.',
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                backgroundColor: Color(0xFF3366FF),
                minimumSize: const Size.fromHeight(80),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () async {
                //todo AppGoTo login screen
              },
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                        spacing: 16,
                        dotColor: Colors.black26,
                        activeDotColor: Color(0xFF3366FF),
                      ),
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget buildPage({
    required String urlImage,
    required Widget title,
    required String subtitle,
  }) =>
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 64),
            title,
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      );
}
