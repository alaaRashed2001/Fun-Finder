import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fun_finder/core/routing/app_router.dart';
import 'package:fun_finder/fun_finder_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => FunFinderApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}