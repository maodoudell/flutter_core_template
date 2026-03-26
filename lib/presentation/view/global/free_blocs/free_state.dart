import 'package:flutter_core_template/core/utils/themes/colors/app_color_scheme.dart';
import 'package:flutter_core_template/core/utils/themes/language/language_mode.dart';

class FreeState {
  ColorMode colorMode;
  LanguageMode languageMode;

  FreeState({required this.colorMode, required this.languageMode});

  FreeState copyWith({
    ColorMode? colorMode,
    LanguageMode? languageMode,
  }) {
    return FreeState(
      colorMode: colorMode ?? this.colorMode,
      languageMode: languageMode ?? this.languageMode,
    );
  }
}
