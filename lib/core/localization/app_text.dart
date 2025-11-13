import 'package:get/get.dart';
import 'package:jayliu293/core/utils/constant/app_strings.dart';

/// Convenience wrapper so widgets can read localized strings without `.tr`.
class AppText {
  const AppText._();

  static String get appTitle => AppStrings.appTitle.tr;
  static String get homeTitle => AppStrings.homeTitle.tr;
}
