import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _pref;

  static bool _isDarkMode = false;
  static String _name = 'jose';
  static int _gender = 1;

  static String get name {
    return _pref.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _pref.setString('name', name);
  }

  static bool get isDarkMode {
    return _pref.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool isDarkMode) {
    _isDarkMode = isDarkMode;
    _pref.setBool('isDarkMode', _isDarkMode);
  }

  static int get gender {
    return _pref.getInt('gender') ?? _gender;
  }

  static set gender(int gender) {
    _gender = gender;
    _pref.setInt('gender', _gender);
  }

  static Future init() async {
    _pref = await SharedPreferences.getInstance();
  }
}
