import 'package:flutter/material.dart';

ThemeData appThemeData(ColorScheme colorScheme){
  return ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(

    ),
    colorScheme: colorScheme,
  );
}