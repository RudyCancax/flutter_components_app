import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static Color primaryColor = Colors.green;
  static Color appBarIconColor = Colors.white;
  static Color appPrimaryTextColor = Colors.white;

  static ThemeData lightTheme() {
    primaryColor = Colors.green;
    appBarIconColor = Colors.white;
    appPrimaryTextColor = Colors.white;

    return ThemeData.light().copyWith(
        primaryColor: primaryColor,
        listTileTheme: ListTileThemeData(iconColor: primaryColor),
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          iconTheme: IconThemeData(color: appBarIconColor),
          titleTextStyle: TextStyle(
              color: appPrimaryTextColor,
              fontSize: 30,
              fontWeight: FontWeight.w400),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: appPrimaryTextColor)));
  }

  // Dark Theme

  static ThemeData darkTheme() {
    primaryColor = Colors.brown;
    appBarIconColor = Colors.white;
    appPrimaryTextColor = Colors.white;
    const textColor = Colors.white;

    return ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.blueGrey[900],
        primaryColor: primaryColor,
        listTileTheme: ListTileThemeData(
          iconColor: primaryColor,
          textColor: textColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          iconTheme: IconThemeData(color: appBarIconColor),
          titleTextStyle: TextStyle(
              color: appPrimaryTextColor,
              fontSize: 30,
              fontWeight: FontWeight.w400),
        ));
  }
}
