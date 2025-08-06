import 'package:reward_campaigns/core/constants/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  final SharedPreferences prefs;

  SharedPrefsService(this.prefs);

  bool get firstLaunch => prefs.getBool(SharedPrefsKeys.firstLaunch) ?? false;

  Future<void> setFirstLaunch(bool value) async {
    await prefs.setBool(SharedPrefsKeys.firstLaunch, value);
  }
}
