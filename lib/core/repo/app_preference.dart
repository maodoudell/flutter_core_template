abstract class AppPreference {
  //string
  Future<void> setString(String key, String value);
  void getString(String key);
  //specific key
  Future<void> setAccessToken(String key);
  String getAccessToken();
  String getRefreshToken();
  //bool
  bool getBool(String key);
  Future<void> setBool(String value);
}
