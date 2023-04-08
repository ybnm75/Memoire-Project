import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveCredentials(String email, String password) async {
    await _prefs.setString('email', email);
    await _prefs.setString('password', password);
  }

  Future<Map<String, String>?> getCredentials() async {
    final email = _prefs.getString('email');
    final password = _prefs.getString('password');
    if (email != null && password != null) {
      return {'email': email, 'password': password};
    } else {
      return null;
    }
  }

  Future<void> clearCredentials() async {
    await _prefs.remove('email');
    await _prefs.remove('password');
  }
}