import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  AppTextStyles._();
  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  TextStyle get textMediumBoldBlack => TextStyle(
    fontSize: 16,
    color: AppColors.onSecondary,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none
  );
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}