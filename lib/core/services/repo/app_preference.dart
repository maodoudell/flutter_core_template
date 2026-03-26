import 'package:flutter_core_template/core/utils/themes/colors/app_color_scheme.dart';
import 'package:flutter_core_template/core/utils/themes/language/language_mode.dart';

abstract class AppPreference {
  //string
  Future<void> setString(String key, String value);
  void getString(String key);
  //specific key
  Future<void> setAccessToken(String key);
  String getAccessToken();
  String getRefreshToken();
  // color mode
  Future<void> setColorMode(ColorMode mode);
  ColorMode getColorMode();
  // language
  Future<void> setLanguageModel(LanguageMode mode);
  LanguageMode getLanguageModel();
  //bool
  bool getBool(String key);
  Future<void> setBool(String value);
}
