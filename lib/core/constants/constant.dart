abstract class AppConstants {
  static const String appTitle = 'Reward Campaigns';
}

abstract class AppRoutes {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String home = '/home';
  static const String campaign = '/campaign';
  static const String member = '/member';
  static const String pointTracking = '/pointTracking';
  static const String referFriend = '/referFriend';
}

abstract class SharedPrefsKeys {
  static const String firstLaunch = 'firstLaunch';
  static const String language = 'lang';
}
