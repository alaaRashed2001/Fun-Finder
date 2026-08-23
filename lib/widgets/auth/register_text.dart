import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return   RichText(
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
    );
  }
}

