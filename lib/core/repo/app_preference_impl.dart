// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'package:flutter_core_template/core/repo/app_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferenceImpl implements AppPreference {
  final SharedPreferences sharedPreferences;
  AppPreferenceImpl(this.sharedPreferences);
  final String ACCESS_TOKEN = "accessToken";
  final String REFRESH_TOKEN = "refreshToken";

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
}
