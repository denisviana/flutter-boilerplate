import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  /// Define o tema de texto usando o sistema de tipografia do Material Design 3.
  static TextTheme get textTheme => _textThemeMontserrat;

  static final TextTheme _textThemeMontserrat = TextTheme(
    displayLarge: GoogleFonts.montserrat(
      fontSize: 57,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: GoogleFonts.montserrat(
      fontSize: 45,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: GoogleFonts.montserrat(
      fontSize: 36,
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: GoogleFonts.montserrat(
      fontSize: 32,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: GoogleFonts.montserrat(
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: GoogleFonts.montserrat(
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.montserrat(
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
  );
}
