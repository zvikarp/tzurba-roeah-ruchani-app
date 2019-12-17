import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class ThemeUtil {
  // colors
  final Color primaryColor = Color(0xFF3C658E);
  final Color textColor = Color(0xFF000000);
  final Color secondaryColor = Color(0xFF3EA1DA);
  final Color backgroundColor = Color(0xFFE5E5E5);
  // typography
  final String font = "Rubik";

  getTheme(BuildContext context) {
    return ThemeData(
      // colors
      primaryColor: primaryColor,
      accentColor: secondaryColor,
      cursorColor: textColor,
      backgroundColor: backgroundColor,
      canvasColor: backgroundColor,
      // typography
      // textTheme: GoogleFonts.rubikTextTheme(
      //   Theme.of(context).textTheme,
      // ),
    );
  }
}

ThemeUtil themeUtil = new ThemeUtil();
