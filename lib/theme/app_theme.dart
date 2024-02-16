import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static const lPrimaryColor = Colors.green;
  static const lAppBarIconColor = Colors.white;
  static const lappBarTextColor = Colors.white;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: lPrimaryColor,
      listTileTheme: const ListTileThemeData(iconColor: lPrimaryColor),
      appBarTheme: const AppBarTheme(
        backgroundColor: lPrimaryColor,
        iconTheme: IconThemeData(color: lAppBarIconColor),
        titleTextStyle: TextStyle(
            color: lappBarTextColor, fontSize: 30, fontWeight: FontWeight.w400),
      ));

  // Dark Theme
  static final dPrimaryColor = Colors.amber[900];
  static const dTextColor = Colors.white;
  static const dAppBarIconColor = Colors.white;
  static const dappBarTextColor = Colors.white;

  static final ThemeData darkTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.blueGrey[900],
      primaryColor: dPrimaryColor,
      listTileTheme: ListTileThemeData(
        iconColor: dPrimaryColor,
        textColor: dTextColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: dPrimaryColor,
        iconTheme: const IconThemeData(color: dAppBarIconColor),
        titleTextStyle: const TextStyle(
            color: dappBarTextColor, fontSize: 30, fontWeight: FontWeight.w400),
      ));
}
