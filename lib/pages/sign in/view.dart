// ignore_for_file: prefer_const_constructors

import 'package:chat_application/common/values/colors.dart';
import 'package:chat_application/common/values/values.dart';
import 'package:chat_application/common/widgets/button.dart';
import 'package:chat_application/pages/sign%20in/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildLogo() {
      return Container(
        width: 110.w,
        margin: EdgeInsets.only(top: 84.h),
        child: Column(
          children: [
            Container(
              width: 76.w,
              height: 76.h,
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 76.w,
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: const [
                          Shadows.primaryShadow,
                        ],
                        borderRadius: BorderRadius.circular(35.r),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      "assets/images/ic_launcher.png",
                      height: 76.h,
                      width: 76.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
              child: Text(
                "Let's chat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.thirdElement,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildThirdPartyLogin() {
      return Container(
        width: 295.w,
        margin: EdgeInsets.only(bottom: 280.h),
        child: Column(
          children: [
            Text(
              "Sign in with social networks",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 50.w, right: 50.w),
              child: btnFlatButtonWidget(
                  onPressed: () {
                    controller.handleSignIn();
                  },
                  width: 200.w,
                  height: 50.h,
                  title: "Google Login"),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            Spacer(),
            _buildThirdPartyLogin(),
          ],
        ),
      ),
    );
  }
}
