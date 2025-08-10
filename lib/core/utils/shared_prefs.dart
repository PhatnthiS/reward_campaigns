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

  bool get isMember => prefs.getBool(SharedPrefsKeys.member) ?? false;

  Future<void> joinMember(String name) async {
    await prefs.setBool(SharedPrefsKeys.member, true);
    await prefs.setString(SharedPrefsKeys.username, name);
  }

  String get getUsername => prefs.getString(SharedPrefsKeys.username) ?? '';

  Future<void> clearCache() async{
    await prefs.clear();
  }
}
