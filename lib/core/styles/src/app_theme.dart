import 'package:flutter/material.dart';
import 'package:menuqr/core/styles/styles.dart';

class AppTheme {
  final AppColor chosenColor;

  AppTheme(this.chosenColor);

  ThemeData getTheme() {
    final size = AppSize();
    return ThemeData(
      fontFamily: fontFamily,
      colorScheme: ColorScheme.fromSeed(
        surface: chosenColor.backgroundColor,
        seedColor: chosenColor.primaryColor,
        primary: chosenColor.primaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: chosenColor.primaryColor,
        foregroundColor: chosenColor.backgroundColor,
        titleTextStyle: TextStyle(
          fontFamily: fontFamily,
          fontSize: size.appBarText,
          color: chosenColor.whiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(
          color: chosenColor.textColor,
          fontSize: size.smallText,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          color: chosenColor.textColor,
          fontSize: size.normalText,
          fontFamily: fontFamily,
        ),
        bodyLarge: TextStyle(
          color: chosenColor.textColor,
          fontSize: size.largeText,
          fontFamily: fontFamily,
        ),
        headlineLarge: TextStyle(
          color: chosenColor.textColor,
          fontSize: size.largeText,
          fontFamily: fontFamily,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(chosenColor.primaryColor),
          foregroundColor:
              MaterialStateProperty.all<Color>(chosenColor.whiteColor),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: size.smallText,
              fontFamily: fontFamily,
            ),
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all<Color>(chosenColor.primaryColor),
        overlayColor:
            MaterialStateProperty.all<Color>(chosenColor.backgroundColor),
        trackColor:
            MaterialStateProperty.all<Color>(chosenColor.backgroundColor),
        trackOutlineColor:
            MaterialStateProperty.all<Color>(chosenColor.backgroundColor),
      ),
    );
  }
}
