import 'package:flutter/material.dart';

/// [BASE APPTHEME]
class ColorUtils {
  static const transparent = Colors.transparent;
  static const primary_100 = Color(0XFF74CCF4);
  static const primary_200 = Color(0XFF5ABCD8);
  static const primary_300 = Color(0XFF1CA3EC);
  static const primary_400 = Color(0XFF2389DA);
  static const primary_500 = Color(0XFF0F5E9C);
  static const background_100 = Color(0XFFFFFFF2);
  static const background_200 = Color(0XFFF9F9F9);
  static const background_300 = Color(0XFFFFFFF4);
  static const background_400 = Color(0XFFFBF7F5);
  static const background_500 = Color(0XFFF9F1F1);
  static const background_600 = Color(0XFF999999);
  static const background_700 = Color(0XFF777777);
  static const background_800 = Color(0XFF555555);
  static const background_900 = Color(0XFF333333);
  static const background_1000 = Color(0XFF111111);
  static const text_100 = Color(0XFFFDFBFB);
  static const text_200 = Color(0XFFFBFDFB);
  static const text_300 = Color(0XFFFDFDFF);
  static const text_400 = Color(0XFFFDF9F9);
  static const text_500 = Color(0XFFFDFBFB);
  static const text_600 = Color(0XFF6E7F80);
  static const text_700 = Color(0XFF536872);
  static const text_800 = Color(0XFF708090);
  static const text_900 = Color(0XFF536878);
  static const text_1000 = Color(0XFF36454F);
  static const base = Color(0XFF0089BA);
  static const base_100 = Color(0XFF00A0F3);
  static const base_200 = Color(0XFFEEFBFF);
  static const base_300 = Color(0XFFE6F4F1);

  ///[Gradient match with base]
  static const base_400 = Color(0XFF3C80C0);
  static const base_500 = Color(0XFF6574BD);
  static const base_600 = Color(0XFF8766B1);
  static const base_700 = Color(0XFFA3569C);
  static const base_800 = Color(0XFFB5467F);

  ///[Gradient match with base]
  static const base_900 = Color(0XFF374955);
  static const base_101 = Color(0XFF9BAEBC);
  static const base_201 = Color(0XFFAE6997);

  ///[Gradient Dark]
  static const baseDark = Color(0XFF070D0F);
  static const baseDark_100 = Color(0XFF333738);

  static const baseDark_200 = Color(0XFF606465);

  static const gradient = LinearGradient(
      begin: Alignment(-1.0, -2.0),
      end: Alignment(1.0, 2.0),
      colors: [
        base,
        base_100,
        base_200,
        base_300,
      ]);
  static const gradient_100 = LinearGradient(
      begin: Alignment(-1.0, -2.0),
      end: Alignment(1.0, 2.0),
      colors: [
        base,
        base_400,
        base_500,
        base_600,
        base_700,
        base_800,
      ]);
  static const gradient_200 = LinearGradient(
      begin: Alignment(-1.0, -2.0),
      end: Alignment(1.0, 2.0),
      colors: [
        base,
        base_900,
        base_101,
        base_201,
      ]);
  static const gradientDark = LinearGradient(
      begin: Alignment(-1.0, -2.0),
      end: Alignment(1.0, 2.0),
      colors: [
        baseDark,
        baseDark_100,
        baseDark_200,
      ]);
}
