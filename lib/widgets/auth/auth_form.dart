import 'package:flutter/material.dart';
import 'package:fun_finder/core/app_validators_helper.dart';
import 'package:fun_finder/core/constants/app_icons.dart';
import 'package:fun_finder/widgets/auth/app_text_form_field.dart';

class AuthForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  final TextEditingController emailController;
  final TextEditingController passwordController;

  const AuthForm({
    super.key,
    required this.formKey,

    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 14,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppTextFormField(
            controller: emailController,
            hintText: 'test@example.com',
            inputAction: TextInputAction.next,
            inputType: TextInputType.emailAddress,
            prefixIcon: AppIcons.email,
            validator: AppValidators.validateEmail,
          ),

          AppTextFormField(
            controller: passwordController,
            hintText: 'xxxxxxxx',
            inputAction: TextInputAction.next,
            inputType: TextInputType.visiblePassword,
            obscure: true,
            prefixIcon: AppIcons.lock,
            validator: AppValidators.validatePassword,
          ),
        ],
      ),
    );
  }
}
