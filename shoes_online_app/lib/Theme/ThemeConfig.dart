import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeConfig extends ThemeLight {
  static String DefaultFont = 'IranSans';
  late TextStyle defaultStyle;

  ThemeConfig(){
    defaultStyle = TextStyle(fontFamily: DefaultFont,color: primaryTextColor);

  }

  ThemeData get ThemApp => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: this.primary,
        secondary: this.secondary,
        onSecondary: this.onSecondary,
      ),
    textTheme: TextTheme(
      bodyMedium: defaultStyle,
      bodySmall: defaultStyle.copyWith(color: this.secondaryTextColor)
    )
  );
}

class ThemeLight {
  Color primary = Color(0xff217cf3);
  Color secondary = Color(0xff262a35);
  Color onSecondary = Colors.white;
  Color primaryTextColor = Color(0xff262a35);
  Color secondaryTextColor = Color(0xffb3b6be);
}
