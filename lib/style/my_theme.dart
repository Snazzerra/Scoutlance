import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  // #096c61 28c970
  static const int _primaryValue = 0xFF2968B0;
  static const int _secondaryValue = 0xFF28c970;

  static const String primaryColorString = '#096c61';
  static const String primaryDarkColorString = '#b36b02';
  static const Color primaryColor = Color(_primaryValue);
  static const Color secondaryColor = Color(_secondaryValue);
  // static const MaterialColor secondary = primary;

  static const Color errorColor = Color(0xffd32f2f);

  static const MaterialColor primary =
      MaterialColor(_primaryValue, <int, Color>{
    50: Color(0xFFE5EDF6),
    100: Color(0xFFBFD2E7),
    200: Color(0xFF94B4D8),
    300: Color(0xFF6995C8),
    400: Color(0xFF497FBC),
    500: Color(_primaryValue),
    600: Color(0xFF2460A9),
    700: Color(0xFF1F55A0),
    800: Color(0xFF194B97),
    900: Color(0xFF0F3A87),
  });

  static const MaterialColor secondary =
      MaterialColor(_secondaryValue, <int, Color>{
    100: Color(0xFFBFEFD4),
    200: Color(_secondaryValue),
    400: Color(0xFF48D185),
    700: Color(0xFF1EBC5D),
  });

  static primaryTransparent(double opacity) {
    return const Color(_primaryValue).withOpacity(opacity);
  }

  static TextTheme getMaterialTextTheme(Color color) {
    return TextTheme(
      displayLarge: GoogleFonts.roboto(
          color: color,
          fontSize: 93,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5),
      displayMedium: GoogleFonts.roboto(
          color: color,
          fontSize: 58,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5),
      displaySmall: GoogleFonts.roboto(
          color: color, fontSize: 46, fontWeight: FontWeight.w400),
      headlineMedium: GoogleFonts.roboto(
          color: color,
          fontSize: 33,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25),
      headlineSmall: GoogleFonts.roboto(
          color: color, fontSize: 23, fontWeight: FontWeight.w400),
      titleLarge: GoogleFonts.roboto(
          color: color,
          fontSize: 19,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15),
      titleMedium: GoogleFonts.roboto(
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15),
      titleSmall: GoogleFonts.roboto(
          color: color,
          fontSize: 13,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1),
      bodyLarge: GoogleFonts.roboto(
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5),
      bodyMedium: GoogleFonts.roboto(
          color: color,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25),
      labelLarge: GoogleFonts.roboto(
          color: color,
          fontSize: 13,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25),
      bodySmall: GoogleFonts.roboto(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4),
      labelSmall: GoogleFonts.roboto(
          color: color,
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5),
    );
  }
}
