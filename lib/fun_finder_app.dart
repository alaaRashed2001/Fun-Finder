import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fun_finder/core/global/design_system/theme_data/app_theme.dart';
import 'package:fun_finder/core/routing/app_router.dart';
import 'package:fun_finder/core/routing/routes.dart';

class FunFinderApp extends StatelessWidget {
  final AppRouter appRouter;

  const FunFinderApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(401, 864),
      builder: (context, child) {
        return MaterialApp(
          title: 'Fun Finder',
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),

          theme: AppTheme.lightTheme,
          themeMode: ThemeMode.light,

          initialRoute: Routes.loginScreen,
          onGenerateRoute: appRouter.generateRoute,

          builder: (context, child) {
            final isAndroid =
                Theme.of(context).platform == TargetPlatform.android;

            return DevicePreview.appBuilder(
              context,
              SafeArea(top: false, bottom: isAndroid, child: child!),
            );
          },
        );
      },
    );
  }
}
