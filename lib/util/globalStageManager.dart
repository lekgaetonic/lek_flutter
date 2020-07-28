import 'package:shared_preferences/shared_preferences.dart';

class GlobalStageManager {
  final String key = "bottomnavigation_currentindex";
  final String host = 'https://ktwdevapi.ktw.co.th';

  Future<void> setBottomNavigationCurrentIndex(int currentIndex) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(this.key, currentIndex);
  }

  Future<int> getBottomNavigationCurrentIndex() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(this.key) ?? 0;
  }
}
