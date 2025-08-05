// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get welcomeTitle => 'ยินดีต้อนรับสู่\nแคมเปญรางวัล';

  @override
  String get welcomeSubtitle => 'สำรวจข้อเสนอและรางวัลที่มีให้';

  @override
  String get welcomeRemark => 'ก่อนเริ่มใช้งาน กรุณาเลือกภาษาของคุณ';

  @override
  String get welcomeRemarkSubtitle =>
      'คุณสามารถเปลี่ยนภาษาได้ภายหลังในเมนูการตั้งค่า';

  @override
  String get getStarted => 'Get started';

  @override
  String get english => 'อังกฤษ';

  @override
  String get thai => 'ไทย';
}
