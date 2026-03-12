import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/util/themes/color/app_color_scheme.dart';

class AppLightColor implements AppColorScheme {
  @override
  ColorScheme generate() {
    // TODO: implement generate
    return ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue,
      error: Colors.red,
      onError: Colors.red,
      //appbar
      surface: Colors.white,
      //icon and text
      onSurface: Colors.black,
      //background
      background: Colors.white,

      onBackground: Colors.black,
      onPrimary: Colors.black,
      secondary: Colors.black,
      onSecondary: Colors.green,
    );
  }
}
