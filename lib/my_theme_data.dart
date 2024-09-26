import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFF5D9CEC);
  static const Color lightScaffoldBackground = Color(0xFFDFECDB);
  static const Color green = Color(0xFF61E757);
  static const Color red = Color(0xFFEC4B4B);
  static final lightTheme = ThemeData(
    primaryColor: lightPrimary,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightPrimary,
      elevation: 0,
      toolbarHeight: 150,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
      ),
    ),
    scaffoldBackgroundColor: lightScaffoldBackground,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: IconThemeData(size: 30),
      unselectedIconTheme: IconThemeData(size: 30),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: lightPrimary,
      foregroundColor: Colors.white,
      elevation: 0,
      shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 4)),
    ),
    textTheme: const TextTheme(
        titleMedium: TextStyle(
          color: lightPrimary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'Poppins',
        )),
  );
}
