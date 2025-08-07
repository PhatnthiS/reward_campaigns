import 'package:reward_campaigns/core/utils/shared_prefs.dart';
import 'repositories.dart';

class MemberRepositoryImpl implements MemberRepository {
  final SharedPrefsService _prefsService;

  MemberRepositoryImpl(this._prefsService);

  @override
  Future<bool> isMember() async {
    return _prefsService.isMember;
  }

  @override
  Future<void> joinMember(String name) async {
    return _prefsService.joinMember(name);
  }

  @override
  Future<String> getUsername() async {
    return _prefsService.getUsername;
  }
}
