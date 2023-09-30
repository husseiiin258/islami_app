import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        primary: const Color(0xFFB7935F),
        seedColor: const Color(0xFFB7935F),
        onSecondary: Colors.black,
        onBackground: Colors.white,
        onSecondaryContainer: Color(0xFFB7935F),
        onPrimary: const Color(0xFFB7935F)),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 32,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
          fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
    ),
    dividerColor: const Color(0xFFB7935F),
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: const Color(0xFF141A2E),
      colorScheme: ColorScheme.fromSeed(
          primary: Color(0xFF141A2E),
          seedColor: const Color(0xFF141A2E),
          onSecondary: Color(0xFFFACC1D),
          onBackground: Color(0xFF141A2E),
          onSecondaryContainer: Color(0xFFFACC1D),
          onPrimary: const Color(0xFFFACC1D)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF141A2E),
        selectedIconTheme: IconThemeData(
          color: Color(0xFFFACC1D),
          size: 32,
        ),
        selectedItemColor: Color(0xFFFACC1D),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
        unselectedItemColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      dividerColor: const Color(0xFFFACC1D),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Color(0xFF141A2E),
      ));
}
