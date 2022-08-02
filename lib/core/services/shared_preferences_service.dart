import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferencesService? _instance;
  static SharedPreferences? _sharedPreferences;
  static const String _darkModeKey = 'darkmode';

  static Future<SharedPreferencesService> getInstance() async {
    if (_instance == null) {
      // Initialize the asynchronous shared preferences
      _sharedPreferences = await SharedPreferences.getInstance();
      _instance = SharedPreferencesService();
    }

    return Future.value(_instance);
  }
}
