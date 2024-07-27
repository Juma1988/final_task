import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/design/app_image.dart';
import 'package:graduation_project/core/design/app_outline_button.dart';
import 'package:graduation_project/core/design/app_textfiled.dart';

class CreateAccountView01 extends StatefulWidget {
  @override
  State<CreateAccountView01> createState() => _CreateAccountView01State();
}

class _CreateAccountView01State extends State<CreateAccountView01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          AppImage(
            'Logo.png',
            width: 80.w,
            height: 20.h,
          ),
          SizedBox(width: 24.w)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 8.h),
              Text(
                'Please create an account to find your dream job',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20.h),
              AppTextField(
                label: 'username',
                prefixType: PrefixType.username,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 16.h),
              AppTextField(
                label: 'email',
                prefixType: PrefixType.email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.h),
              AppTextField(
                label: 'password',
                prefixType: PrefixType.password,
                keyboardType: TextInputType.name,
                isPassword: true,
              ),
              SizedBox(height: 16.h),
              AppTextField(
                label: 'conform password',
                prefixType: PrefixType.password,
                keyboardType: TextInputType.name,
                isPassword: true,
              ),
              SizedBox(height: 8.h),
              Text(
                'Password must be at least 8 characters',
                style: TextStyle(color: Colors.grey, fontSize: 12.sp),
              ),
              SizedBox(height: 80.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      //todo GoTo login screen
                    },
                    child: Text('Login', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
              SizedBox(height: 16),
              AppButton(
                label: 'Create account',
                onPress: () {
                  //todo send data
                },
                isOutlined: false,
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Or Sign up With Account'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSocialButton(
                    'assets/images/google.png',
                    'Google',
                    () {
                      //todo login using google account
                    },
                  ),
                  _buildSocialButton(
                    'assets/images/Facebook.png',
                    'Facebook',
                    () {
                      //todo login using facebook account
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(
      String iconPath, String text, VoidCallback? onPress) {
    return OutlinedButton.icon(
      icon: Image.asset(iconPath, height: 24),
      label: Text(text),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(150, 50),
        side: BorderSide(color: Colors.grey),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPress ?? () {},
    );
  }
}
