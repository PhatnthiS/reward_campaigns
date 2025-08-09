import 'package:reward_campaigns/core/utils/shared_prefs.dart';
import 'repositories.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final SharedPrefsService _prefsService;

  OnboardingRepositoryImpl(this._prefsService);

  @override
  Future<bool> isFirstLaunch() async {
    return !_prefsService.firstLaunch;
  }

  @override
  Future<void> completeOnboarding() async {
    await _prefsService.setFirstLaunch(true);
  }

  @override
  Future<String> getLanguage() async {
    return _prefsService.getLanguage;
  }

  @override
  Future<void> setLanguage(Language value) async {
    await _prefsService.setLanguage(value);
  }

  @override
  Future<void> clearCache() async {
    await _prefsService.clearCache();
  }

}
