import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/app_asset_helper.dart';
import 'package:fun_finder/core/constants/app_icons.dart';
import 'package:fun_finder/core/constants/app_images.dart';
import 'package:fun_finder/widgets/auth/auth_screen_template.dart';
import 'package:fun_finder/widgets/auth/custom_elevated_button.dart';
import 'package:fun_finder/widgets/auth/login_another_way.dart';

class FacialLogin extends StatelessWidget {
  const FacialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScreenTemplate(
      child: Column(
        spacing: 10.h,
        children: [
          Text(
            "Facial Login",
            style: TextStyle(
              color: Color(0xFF181A1B),
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              height: 0.8,
            ),
          ),
          Text(
            "Look at the camera to log in securely",
            style: TextStyle(
              color: Color(0xFF64748B),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              height: 1.4,
            ),
          ),
          Image.asset(AppImages.faceId, height: 130.h, width: 145.w),

          Container(
            height: 50.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
            decoration: BoxDecoration(
              color: Color(0xFFEFF6FF),
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Color(0xFFDBEAFE)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10.w,
              children: [
                AppAssetHelper.svgImage(
                  AppIcons.worn,
                  height: 27.h,
                  width: 27.w,
                ),
                Column(
                  spacing: 6,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Make sure your face is clearly visible",
                      style: TextStyle(
                        color: Color(0xFF181A1B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      "Avoid hats, sunglasses, or poor lighting",
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomElevatedButton(text: "Start Facial Login",
              icon: AppIcons.camira,
              onPressed: () {}),
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
                "or login another way",
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
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LoginAnotherWay(
                  icon: AppIcons.lock,
                  title: "Password",
                  onTap: () {},
                ),
                VerticalDivider(
                  color: Color(0xFFE5E7EB),
                  thickness: 1,
                  width: 1,
                  indent: 8,
                  endIndent: 10,
                ),
                LoginAnotherWay(
                  icon: AppIcons.fingerprint,
                  title: "Fingerprint",
                  onTap: () {},
                ),

                VerticalDivider(
                  color: Color(0xFFE5E7EB),
                  thickness: 1,
                  width: 1,
                  indent: 8,
                  endIndent: 10,
                ),

                LoginAnotherWay(
                  icon: AppIcons.pinCode,
                  title: "PIN Code",
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
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
    );
  }
}
