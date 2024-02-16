import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static MaterialColor primaryColor = Colors.green;
  static Color appBarIconColor = Colors.white;
  static Color appBarTextColor = Colors.white;

  static ThemeData lightTheme() {
    primaryColor = Colors.green;
    appBarIconColor = Colors.white;
    appBarTextColor = Colors.white;

    return ThemeData.light().copyWith(
        primaryColor: primaryColor,
        listTileTheme: ListTileThemeData(iconColor: primaryColor),
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          iconTheme: IconThemeData(color: appBarIconColor),
          titleTextStyle: TextStyle(
              color: appBarTextColor,
              fontSize: 30,
              fontWeight: FontWeight.w400),
        ));
  }

  // Dark Theme

  static ThemeData darkTheme() {
    primaryColor = Colors.brown;
    appBarIconColor = Colors.white;
    appBarTextColor = Colors.white;
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
              color: appBarTextColor,
              fontSize: 30,
              fontWeight: FontWeight.w400),
        ));
  }
}
