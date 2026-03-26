import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/utils/themes/colors/app_dark_color.dart';
import 'package:flutter_core_template/core/utils/themes/colors/app_light_color.dart';

enum ColorMode {
  light('light'),
  dark('dark');
  // pink('pink'),
  // green('green');

  const ColorMode(this.value);
  final String value;
  factory ColorMode.fromString(String? ln) => ColorMode.values.firstWhere((e) => e.value == ln, orElse: () => ColorMode.light);

  static ColorMode toEnum(String value) {
    ColorMode result = light;
    if (value == light.name) {
      result = light;
    } else if (value == dark.name) {
      result = dark;
    }
    return result;
  }
}

abstract class AppColorScheme {
  factory AppColorScheme(ColorMode mode) {
    switch (mode) {
      case ColorMode.light:
        return AppLightColor();
      case ColorMode.dark:
        return AppDarkColor();
    }
  }

  ColorScheme generate();
}
