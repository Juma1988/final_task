import 'package:flutter/material.dart';
import 'package:graduation_project/core/design/app_image.dart';
import 'package:graduation_project/core/design/app_outline_button.dart';
import 'package:graduation_project/core/design/app_textfiled.dart';

class LoginScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage('preview.png',
                    height: 150, width: 150, fit: BoxFit.cover),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.surfaceTint),
                      ),
                      Text(
                        'TaskMass',
                        style: TextStyle(
                            fontSize: 46,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        AppTextField(
                          label: 'E-mail',
                          hint: ' Enter your email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 10),
                        AppTextField(
                          label: 'Password',
                          isPassword: true,
                          hint: 'Enter your password',
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Text('Forgot Password',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.error)),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(height: 10),
                        AppButton(label: 'Log in'),
                        SizedBox(height: 20),
                        AppButton(
                          label: 'Register',
                          isOutlined: true,
                          onPress: () {
                          //todo Password restore
                          },
                          // pageGoTo: LoginScreenView,
                        ),
                        SizedBox(height: 25),
                        Text(
                          'Or Continue With:',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                                child: Text('Google'),
                                onPressed: () {
                                  //todo goto Login with google
                                }),
                            SizedBox(
                              height: 15,
                              child: VerticalDivider(
                                width: 30,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary
                                    .withOpacity(0.25),
                              ),
                            ),
                            TextButton(
                                child: Text('Slack'),
                                onPressed: () {
                                  //todo goto Login with Slack
                                }),
                            SizedBox(
                              height: 15,
                              child: VerticalDivider(
                                width: 30,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            TextButton(
                                child: Text('Github'),
                                onPressed: () {
                                  //todo goto Login with Github
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
