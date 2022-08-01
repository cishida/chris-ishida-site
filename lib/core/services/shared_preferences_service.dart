import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferencesService? _instance;
  static SharedPreferences? _sharedPreferences;

  static Future<SharedPreferencesService> getInstance() async {
    if (_instance == null) {
      // Initialise the asynchronous shared preferences
      _sharedPreferences = await SharedPreferences.getInstance();
      _instance = SharedPreferencesService();
    }

    return Future.value(_instance);
  }
}
