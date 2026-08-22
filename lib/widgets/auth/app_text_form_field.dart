import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/app_asset_helper.dart';
import 'package:fun_finder/core/constants/app_icons.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? prefixIcon;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final bool obscure;
  final FormFieldValidator<String>? validator;

  const AppTextFormField({
    super.key,
    required this.controller,
    this.hintText,
    this.inputType,
    this.obscure = false,
    this.inputAction,
    this.validator,
    this.prefixIcon,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool showPassword = widget.obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscure ? showPassword : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(start: 16.w),
          child: AppAssetHelper.svgImage(widget.prefixIcon),
        ),
        suffixIcon: widget.obscure
            ? IconButton(
                onPressed: () => setState(() => showPassword = !showPassword),
                icon: AppAssetHelper.svgImage(
                  height: 14,
                  color: Color(0xFF00C2E0),
                  showPassword ? AppIcons.visibility : AppIcons.visibilityOff,
                ),
              )
            : null,
      ),
      keyboardType: widget.inputType,
      textInputAction: widget.inputAction,
      validator: widget.validator,
    );
  }
}
