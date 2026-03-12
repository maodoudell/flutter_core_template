import 'package:flutter_core_template/domain/repositories/app_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferenceImpl implements AppPreference {
  final SharedPreferences sharedPreferences;
  AppPreferenceImpl(this.sharedPreferences);

  @override
  String getToken() {
    // TODO: implement getToken
    return '';
  }

  @override
  Future<void> setToken(String token) {
    // TODO: implement setToken
    throw UnimplementedError();
  }
}
