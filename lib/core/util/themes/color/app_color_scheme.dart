import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/util/themes/color/app_light_color.dart';

enum ColorMode {
  light('light'),
  dark('dark');
  // pink('pink'),
  // green('green');

  const ColorMode(this.value);
  final String value;
  factory ColorMode.fromString(String? ln) => ColorMode.values.firstWhere((e) => e.value == ln, orElse: () => ColorMode.light);
}

abstract class AppColorScheme{

  factory AppColorScheme(ColorMode mode) {
    switch (mode) {
      case ColorMode.light :
        return AppLightColor();
      case ColorMode.dark :
        return AppLightColor();
    }
  }

  ColorScheme generate();

}
