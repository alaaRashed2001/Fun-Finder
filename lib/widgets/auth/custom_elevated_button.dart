import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/app_asset_helper.dart';
import 'package:fun_finder/core/extension/text_style_extension.dart';
import 'package:fun_finder/core/global/design_system/theme_data/app_theme.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String? icon;
  final VoidCallback? onPressed;
  final bool isLoading;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
    this.isLoading = false,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42.h,
      decoration: BoxDecoration(
        gradient: AppTheme.primaryGradient,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: Theme.of(context).elevatedButtonTheme.style,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10.w,
          children: [
            AppAssetHelper.svgImage(icon),
            isLoading
                ? SizedBox(
              width: 24.w,
              height: 24.h,
              child: const CircularProgressIndicator(
                strokeWidth: 2.5,
                color: Colors.white,
              ),
            )
                : Text(
              text,
              style:
              context.font16Bold?.copyWith(color: Colors.white) ??
                  Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        )
      ),
    );
  }
}
