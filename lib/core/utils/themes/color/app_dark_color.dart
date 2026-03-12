import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/utils/themes/color/app_color_scheme.dart';

class AppDarkColor implements AppColorScheme{
  @override
  ColorScheme generate() {
    // TODO: implement generate
    return ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue,
      error: Colors.red,
      onError:Colors.red,
      onPrimary: Colors.black,
      secondary: Colors.black,
      onSecondary: Colors.black,
      background: Colors.black,
      onBackground: Colors.black,
      surface: Colors.black,
      onSurface: Colors.black,
    );
  }

}
