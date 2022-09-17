import 'package:flutter/material.dart';
import 'package:matt_murdock/utils/colors_utils.dart';

class CustomAppTheme {
  final Color defaultBackgroundTheme;
  final Color defaultColorTheme;
  final Color defaultTextTheme;
  final LinearGradient backgroundColor;
  final LinearGradient backgroundColor_100;
  final LinearGradient backgroundColor_200;
  CustomAppTheme({
    required this.backgroundColor,
    required this.backgroundColor_100,
    required this.backgroundColor_200,
    required this.defaultBackgroundTheme,
    required this.defaultColorTheme,
    required this.defaultTextTheme,
  });

  factory CustomAppTheme.of(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return CustomAppTheme(
      defaultBackgroundTheme:
          isDarkMode ? ColorUtils.background_1000 : ColorUtils.background_200,
      defaultColorTheme:
          isDarkMode ? ColorUtils.primary_500 : ColorUtils.primary_100,
      defaultTextTheme: isDarkMode ? ColorUtils.text_100 : ColorUtils.text_100,
      backgroundColor:
          isDarkMode ? ColorUtils.gradientDark : ColorUtils.gradient,
      backgroundColor_100:
          isDarkMode ? ColorUtils.gradientDark : ColorUtils.gradient_100,
      backgroundColor_200:
          isDarkMode ? ColorUtils.gradientDark : ColorUtils.gradient_200,
    );
  }
}
