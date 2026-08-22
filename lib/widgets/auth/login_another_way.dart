import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/app_asset_helper.dart';

class LoginAnotherWay extends StatelessWidget {
  final String icon;
  final String title;
  final Function() onTap;
  const LoginAnotherWay({super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: Color(0xFFF9FAFB),
            child: AppAssetHelper.svgImage(icon),

          ),
        ),
        Text(title,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A237E),
          ),
        )

      ],
    );
  }
}
