import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/constants/app_svgs.dart';
import 'package:fun_finder/widgets/auth/auth_form.dart';
import 'package:fun_finder/widgets/auth/custom_elevated_button.dart';
import 'package:fun_finder/widgets/auth/other_method_login.dart';
import 'package:fun_finder/widgets/auth/register_text.dart';

class LoginContent extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onFacialLogin;

  const LoginContent({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onFacialLogin,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 32.h),
        child: Column(
          children: [
            Text(
              "Welcome back!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF181A1B),
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              "Log in to continue your adventures",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF64748B),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                height: 1.4,
              ),
            ),
            SizedBox(height: 14.h),
            AuthForm(
              formKey: formKey,
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
                    color: const Color(0xFF00A3C4),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 14.h),
            CustomElevatedButton(text: "Login", onPressed: () async => login()),
            SizedBox(height: 12.h),
            Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Divider(
                    color: const Color(0xFFE5E7EB),
                    thickness: 1,
                    height: 1,
                  ),
                ),
                Text(
                  "or",
                  style: TextStyle(
                    color: const Color(0xFF9CA3AF),
                    fontSize: 14.sp,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: const Color(0xFFE5E7EB),
                    thickness: 1,
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            OtherMethodLogin(
              onTap: () {},
              icon: AppSvgs.google,
              title: "Continue with Google",
            ),
            SizedBox(height: 10.h),
            OtherMethodLogin(
              onTap: onFacialLogin,
              icon: AppSvgs.facial,
              title: "Continue with Facial",
            ),

            SizedBox(height: 14.h),

            RegisterText(),
          ],
        ),
      ),
    );
  }

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    } else {
      return;
    }
  }
}
