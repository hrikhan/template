import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/binding/binding.dart';
import 'core/localization/app_text.dart';
import 'core/localization/app_translation.dart';
import 'core/theme/app_theme.dart';
import 'route/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (_, __) {
        return GetMaterialApp(
          title: AppText.appTitle,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          initialRoute: AppRoutes.home,
          getPages: AppRoutes.pages,
          initialBinding: CoreBinding(),
          translations: AppTranslation(),
          locale: Get.deviceLocale ?? const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
        );
      },
    );
  }
}
