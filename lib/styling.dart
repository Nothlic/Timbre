import 'package:flutter/material.dart';
import 'package:timbre/size_config.dart';

class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Colors.white;
  static const Color topBarBackgroundColor = Color(0xFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC42);
  static const Color unSelectedTabBackgroundColor = Color(0xFFFFFFC);
  static const Color subTitleTextColor = Color(0xFF9F988F);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    title: _titleLight,
    subtitle: _subTitleLight,
    button: _buttonLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    title: _titleDark,
    subtitle: _subTitleDark,
    button: _buttonDark,
  );

  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 28,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 18,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 22,
  );

  static final TextStyle _titleDark = TextStyle(
    color: Colors.white,
    fontSize: 28,
  );

  static final TextStyle _subTitleDark = TextStyle(
    color: Colors.white70,
    fontSize: 18,
    height: 1.5,
  );

  static final TextStyle _buttonDark = TextStyle(
    color: Colors.white,
    fontSize: 22,
  );
}