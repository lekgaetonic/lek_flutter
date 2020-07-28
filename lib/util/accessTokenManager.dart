import 'package:shared_preferences/shared_preferences.dart';

class AccessTokenManager {
  final String key = "accesstoken";

//set data into shared preferences like this
  Future<void> setAccessToken(String accessToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.key, accessToken);
  }

//get value from shared preferences
  Future<String> getAccessToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(this.key) ?? null;
  }
}
