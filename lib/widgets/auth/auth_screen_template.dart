import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/app_asset_helper.dart';
import 'package:fun_finder/core/constants/app_images.dart';
import 'package:fun_finder/core/constants/app_svgs.dart';
import 'dart:ui';

class AuthScreenTemplate extends StatelessWidget {
  final Widget child;

  const AuthScreenTemplate({super.key, required this.child});

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
            padding: EdgeInsets.only(top: 53.h),
            children: [
              AppAssetHelper.svgImage(AppSvgs.logo, height: 60.h, width: 167.w),

              SizedBox(height: 24.h),

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

              Text(
                "Discover amazing places. \n Create Unforgettable memories",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2A2B2B),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 20 / 14,
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
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  height: 300.h,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 12.w,
            right: 12.w,
            child: Stack(
              children: [
                Container(
                  height: 460.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: 16.h,
                    bottom: 0.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.r),
                      topRight: Radius.circular(35.r),
                    ),
                    color: Colors.white,
                  ),
                  child: child,
                ),

                Positioned(
                  bottom: 0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AppAssetHelper.svgImage(AppSvgs.triangle),
                      Positioned(
                        left: 12,
                        bottom: -2,
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
