import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/global/design_system/theme_data/app_theme.dart';
import 'package:fun_finder/screens/login_screen.dart';

class FunFinderApp extends StatelessWidget {


  const FunFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(401, 864),
      builder: (context, child) {
        return MaterialApp(
          title: 'Fun Finder',
          debugShowCheckedModeBanner: false,

          theme: AppTheme.lightTheme,
          themeMode: ThemeMode.light,
          home: LoginScreen(),


        );
      },
    );
  }
}
