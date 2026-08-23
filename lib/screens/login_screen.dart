import 'package:flutter/material.dart';
import 'package:fun_finder/screens/facial_login_content.dart';
import 'package:fun_finder/screens/login_content.dart';
import 'package:fun_finder/widgets/auth/auth_screen_template.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isFacialLogin = false;
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
  void showFacialLogin() {
    setState(() {
      isFacialLogin = true;
    });
  }

  void showPasswordLogin() {
    setState(() {
      isFacialLogin = false;
    });
  }
  void showLoginContent() {
    setState(() {
      isFacialLogin = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return AuthScreenTemplate(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        transitionBuilder: (child, animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.15),
              end: Offset.zero,
            ).animate(animation),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        },
        child: isFacialLogin
            ? FacialLoginContent(
          key: const ValueKey('facial'),
          onPasswordLogin: showLoginContent,

        )
            : LoginContent(
          key: const ValueKey('password'),
          formKey: _formKey,
          emailController: emailController,
          passwordController: passwordController,
          onFacialLogin: showFacialLogin,
        ),
      ),
    );
  }
}


