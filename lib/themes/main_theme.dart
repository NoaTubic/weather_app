import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/features/global/colors/weather_app_colors.dart';

final mainThemeData = ThemeData(
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    primaryColor: WeatherAppColors.primaryColor,
    scaffoldBackgroundColor: WeatherAppColors.backgroundColor,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ));
