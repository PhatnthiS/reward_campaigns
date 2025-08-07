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
  String get getStarted => 'เริ่มต้นใช้งาน';

  @override
  String get english => 'อังกฤษ';

  @override
  String get thai => 'ไทย';

  @override
  String get campaigns => 'แคมเปญ';

  @override
  String get members => 'สมาชิก';

  @override
  String get refer => 'แนะนำเพื่อน';

  @override
  String get points => 'คะแนน';

  @override
  String get campaignsTitle => 'รายการแคมเปญ';

  @override
  String get membersTitle => 'สมาชิก';

  @override
  String get referTitle => 'แนะนำเพื่อน';

  @override
  String get pointsTitle => 'ติดตามคะแนน';

  @override
  String get campaign_join_now => 'แคมเปญเข้าร่วมตอนนี้';

  @override
  String get campaign_subscribe => 'แคมเปญการสมัครสมาชิก';

  @override
  String get campaign_redeem => 'แคมเปญแลกคะแนน';

  @override
  String get seeAll => 'ดูทั้งหมด';

  @override
  String get copied_to_clipboard => 'คัดลอกไปยังคลิปบอร์ดแล้ว';

  @override
  String share_referral_text(Object referralLink) {
    return 'เข้าร่วมแอปด้วยโค้ดแนะนำของฉัน: $referralLink';
  }

  @override
  String get share => 'แชร์';

  @override
  String get copy => 'คัดลอก';

  @override
  String get share_referral_description =>
      'แชร์โค้ดแนะนำของคุณและรับรางวัลเมื่อเพื่อนเข้าร่วม!';

  @override
  String get share_referral_title => 'ชวนเพื่อนของคุณ';

  @override
  String get member_description => 'ขอบคุณที่เข้าร่วมชุมชนของเรา';

  @override
  String get non_member_description =>
      'เข้าร่วมตอนนี้เพื่อปลดล็อกฟีเจอร์พิเศษและเชื่อมต่อกับเรา!';

  @override
  String member_title(Object username) {
    return 'ยินดีต้อนรับกลับ, $username';
  }

  @override
  String get non_member_title => 'เข้าร่วมเป็นสมาชิก!';

  @override
  String get join_now => 'เข้าร่วมตอนนี้';

  @override
  String get sign_in_title => 'กรุณากรอกชื่อของคุณ';

  @override
  String get username_hint => 'ชื่อผู้ใช้';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get current_points => 'คะแนนปัจจุบัน';

  @override
  String points_value(Object currentPoints) {
    return '$currentPoints คะแนน';
  }

  @override
  String get transaction_history => 'ประวัติการทำรายการ';
}
