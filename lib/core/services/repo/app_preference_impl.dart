// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'package:flutter_core_template/core/services/repo/app_preference.dart';
import 'package:flutter_core_template/core/utils/themes/colors/app_color_scheme.dart';
import 'package:flutter_core_template/core/utils/themes/language/language_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferenceImpl implements AppPreference {
  final SharedPreferences sharedPreferences;
  AppPreferenceImpl(this.sharedPreferences);
  final String ACCESS_TOKEN = "accessToken";
  final String REFRESH_TOKEN = "refreshToken";
  final String COLOR_MODE = "colorMode";
  final String LANGUAGE = "language";

  @override
  String getAccessToken() {
    return sharedPreferences.getString(ACCESS_TOKEN) ?? "";
  }

  @override
  bool getBool(String key) {
    // TODO: implement getBool
    throw UnimplementedError();
  }

  @override
  String getRefreshToken() {
    return sharedPreferences.getString(REFRESH_TOKEN) ?? "";
  }

  @override
  void getString(String key) {
    // TODO: implement getString
  }

  @override
  Future<void> setAccessToken(String key) {
    // TODO: implement setAccessToken
    throw UnimplementedError();
  }

  @override
  Future<void> setBool(String value) {
    // TODO: implement setBool
    throw UnimplementedError();
  }

  @override
  Future<void> setString(String key, String value) {
    // TODO: implement setString
    throw UnimplementedError();
  }

  @override
  ColorMode getColorMode() {
    final cache = sharedPreferences.getString(COLOR_MODE) ?? ColorMode.light.name;
    var mode = ColorMode.toEnum(cache);
    return mode;
  }

  @override
  Future<void> setColorMode(ColorMode mode) async {
    sharedPreferences.setString(COLOR_MODE, mode.name);
  }

  @override
  LanguageMode getLanguageModel() {
    final cache = sharedPreferences.getString(LANGUAGE);
    return LanguageMode.fromString(cache);
  }

  @override
  Future<void> setLanguageModel(LanguageMode mode) async {
    sharedPreferences.setString(LANGUAGE, mode.value);
  }
}
