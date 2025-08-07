import 'package:reward_campaigns/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  final SharedPreferences prefs;

  SharedPrefsService(this.prefs);

  bool get firstLaunch => prefs.getBool(SharedPrefsKeys.firstLaunch) ?? false;

  Future<void> setFirstLaunch(bool value) async {
    await prefs.setBool(SharedPrefsKeys.firstLaunch, value);
  }

  String get getLanguage =>
      prefs.getString(SharedPrefsKeys.language) ?? Language.EN.code;

  Future<void> setLanguage(Language value) async {
    await prefs.setString(SharedPrefsKeys.language, value.code);
  }
}
