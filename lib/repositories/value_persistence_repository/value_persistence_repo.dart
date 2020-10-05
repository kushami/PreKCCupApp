import 'package:shared_preferences/shared_preferences.dart';

class ValuePersistenceRepository {
  ValuePersistenceRepository();

  Future<String> getString(String key) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<void> setString(String key, String value) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
}
