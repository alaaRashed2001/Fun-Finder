import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/constants/app_svgs.dart';
import 'package:fun_finder/core/extension/navigation.dart';
import 'package:fun_finder/core/routing/routes.dart';
import 'package:fun_finder/widgets/auth/auth_form.dart';
import 'package:fun_finder/widgets/auth/auth_screen_template.dart';
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
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScreenTemplate(
      child: Column(
        spacing: 10.h,
        children: [
          Text(
            "Welcome back!",
            style: TextStyle(
              color: Color(0xFF181A1B),
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              height: 0.8,
            ),
          ),
          Text(
            "Log in to continue your adventures",
            style: TextStyle(
              color: Color(0xFF64748B),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              height: 1.4,
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
            onTap: () {},
            icon: AppSvgs.google,
            title: "Continue with Google",
          ),

          OtherMethodLogin(
            onTap: () => context.pushNamed(Routes.facialLogin),
            icon: AppSvgs.facial,
            title: "Countinue with Facial",
          ),
          SizedBox(height: 4.h),
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
