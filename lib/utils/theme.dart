import 'dart:ui';
import 'package:flutter/material.dart';

class ThemeUtil {
  // colors
  final Color primaryColor = Color(0xFF3C658E);
  final Color textColor = Color(0xFF000000);
  final Color secondaryColor = Color(0xFF3EA1DA);
  final Color backgroundColor = Color(0xFFE5E5E5);
  // typography
  final String font = "Rubik";

  getTheme() {
    return ThemeData(
      // colors
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      accentColor: secondaryColor,
      cursorColor: textColor,
      backgroundColor: backgroundColor,
      canvasColor: backgroundColor,
      // typography
      textTheme: TextTheme(
        headline: TextStyle(
          fontFamily: font,
          fontSize: 65,
          color: textColor,
        ),
        title: TextStyle(
          fontFamily: font,
          fontSize: 32,
          color: primaryColor,
        ),
        subtitle: TextStyle(
          fontFamily: font,
          fontSize: 16,
          color: textColor,
        ),
        display1: TextStyle(
          fontFamily: font,
          fontSize: 34,
          color: textColor,
        ),
        body1: TextStyle(
          fontFamily: font,
          fontSize: 18,
          color: textColor,
        ),
        body2: TextStyle(
          fontFamily: font,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
        button: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
        caption: TextStyle(
          fontFamily: font,
          fontSize: 14,
          color: textColor,
        ),
      ),
    );
  }
}

ThemeUtil themeUtil = new ThemeUtil();
