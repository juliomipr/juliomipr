import 'package:flutter/material.dart';
import 'package:matt_murdock/utils/constant.dart';
import 'package:matt_murdock/utils/custom_app_theme.dart';
import 'package:matt_murdock/utils/fonts_enum.dart';

class CustomTextStyle {
  final TextStyle textButtonStyle;
  final TextStyle headlineStyle;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  CustomTextStyle({
    required this.textButtonStyle,
    required this.headlineStyle,
    required this.titleStyle,
    required this.subtitleStyle,
  });

  factory CustomTextStyle.of(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width > mobileWidth;
    final customAppTheme = CustomAppTheme.of(context);
    final defaultButtonMobileTextStyle = TextStyle(
      color: customAppTheme.defaultTextTheme,
      fontFamily: CustomFontFamily.gothic.name,
      fontSize: 14,
    );
    final defaultButtonDesktopTextStyle = TextStyle(
      color: customAppTheme.defaultTextTheme,
      fontFamily: CustomFontFamily.gothic.name,
      fontSize: 16,
    );
    final defaultHeadlineMobileStyle = TextStyle(color: customAppTheme.defaultTextTheme, fontSize: 26, fontFamily: CustomFontFamily.gothic.name);
    final defaultHeadlineDesktopStyle = TextStyle(color: customAppTheme.defaultTextTheme, fontSize: 24, fontFamily: CustomFontFamily.gothic.name);
    final defaultTitleMobileStyle = TextStyle(
            color: customAppTheme.defaultTextTheme, fontSize: 18, fontFamily: CustomFontFamily.gothic.name
          );
    final defaultTitleDesktopStyle = TextStyle(
            color: customAppTheme.defaultTextTheme, fontSize: 16, fontFamily: CustomFontFamily.gothic.name
          );
    final defaultSubtitleMobileStyle = TextStyle(
            color: customAppTheme.defaultTextTheme, fontSize: 12, fontFamily: CustomFontFamily.gothic.name
          );
    final defaultSubtitleDesktopStyle = TextStyle(
            color: customAppTheme.defaultTextTheme, fontSize: 14, fontFamily: CustomFontFamily.gothic.name
    );
    return CustomTextStyle(
      textButtonStyle:
          isMobile ? defaultButtonMobileTextStyle : defaultButtonDesktopTextStyle,
          headlineStyle: isMobile ? defaultHeadlineMobileStyle : defaultHeadlineDesktopStyle, 
          titleStyle: isMobile ? defaultTitleMobileStyle : defaultTitleDesktopStyle,
          subtitleStyle: isMobile ? defaultSubtitleMobileStyle : defaultSubtitleDesktopStyle,
    );
  }
}
