import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/app_asset_helper.dart';
import 'package:fun_finder/core/constants/app_images.dart';
import 'package:fun_finder/core/constants/app_svgs.dart';
import 'dart:ui';

import 'package:fun_finder/widgets/auth/auth_form.dart';
import 'package:fun_finder/widgets/auth/custom_elevated_button.dart';
import 'package:fun_finder/widgets/auth/other_method_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    emailController = .new();
    passwordController = .new();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.background,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          ListView(
            padding: EdgeInsets.only(top: 53),
            children: [
              AppAssetHelper.svgImage(AppSvgs.logo, height: 60, width: 167),
              const SizedBox(height: 24),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Fun ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'starts here',
                      style: TextStyle(
                        color: Color(0xFF181A1B),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  "Discover amazing places. \n Create Unforgettable memories",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2A2B2B),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    height: 20 / 14,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  height: 300.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 24.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF).withValues(alpha: 0.75),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 12,
            right: 12,
            child: Stack(
              children: [
                Container(
                  height: 460.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: 16.h,
                    bottom: 8.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(24.r),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    spacing: 10.h,
                    children: [
                      Text(
                        "Welcome back!",
                        style: TextStyle(
                          color: Color(0xFF181A1B),
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Log in to continue your adventures",
                        style: TextStyle(
                          color: Color(0xFF64748B),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          height: 20 / 14,
                        ),
                      ),

                      AuthForm(
                        formKey: _formKey,
                        emailController: emailController,
                        passwordController: passwordController,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Color(0xFF00A3C4),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      CustomElevatedButton(text: "Login", onPressed: () {}),

                      Row(
                        spacing: 12,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xFFE5E7EB),
                              thickness: 1,
                              height: 1,
                            ),
                          ),

                          Text(
                            "or",
                            style: TextStyle(
                              color: Color(0xFF9CA3AF),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              height: 20 / 14,
                            ),
                          ),

                          Expanded(
                            child: Divider(
                              color: Color(0xFFE5E7EB),
                              thickness: 1,
                              height: 1,
                            ),
                          ),
                        ],
                      ),

                      OtherMethodLogin(
                        icon: AppSvgs.google,
                        title: "Continue with Google",
                      ),

                      OtherMethodLogin(
                        icon: AppSvgs.faceId,
                        title: "Countinue with Facial",
                      ),

                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(
                                color: Color(0xFF64748B),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                color: Color(0xFF00A3C4),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AppAssetHelper.svgImage(AppSvgs.triangle),
                      Positioned(
                        left: 3,
                        bottom: 0,
                        child: Image.asset(
                          AppImages.leftCorner,
                          width: 47.w,
                          height: 47.h,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.rightCorner,
                    width: 44.w,
                    height: 44.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
