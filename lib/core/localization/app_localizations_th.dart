// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get welcome_title => 'ยินดีต้อนรับสู่\nแคมเปญรางวัล';

  @override
  String get welcome_subtitle => 'สำรวจข้อเสนอและรางวัลที่มีให้';

  @override
  String get welcome_remark => 'ก่อนเริ่มใช้งาน กรุณาเลือกภาษาของคุณ';

  @override
  String get welcome_remark_subtitle =>
      'คุณสามารถเปลี่ยนภาษาได้ภายหลังในเมนูการตั้งค่า';

  @override
  String get get_started => 'เริ่มต้นใช้งาน';

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
  String get campaigns_title => 'รายการแคมเปญ';

  @override
  String get members_title => 'สมาชิก';

  @override
  String get refer_title => 'แนะนำเพื่อน';

  @override
  String get points_title => 'ติดตามคะแนน';

  @override
  String get campaign_join_now => 'แคมเปญเข้าร่วมตอนนี้';

  @override
  String get campaign_subscribe => 'แคมเปญการสมัครสมาชิก';

  @override
  String get campaign_redeem => 'แคมเปญแลกคะแนน';

  @override
  String get see_all => 'ดูทั้งหมด';

  @override
  String get subscribe_now => 'สมัครสมาชิกทันที';

  @override
  String get redeem_now => 'แลกรับทันที';

  @override
  String join_success(Object title) {
    return 'เข้าร่วม \"$title\" สำเร็จแล้ว';
  }

  @override
  String subscribe_success(Object title) {
    return 'สมัครสมาชิก \"$title\" สำเร็จแล้ว';
  }

  @override
  String redeem_success(Object title) {
    return 'แลกรับ \"$title\" สำเร็จแล้ว';
  }

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

  @override
  String get language => 'ภาษา';

  @override
  String get settings => 'ตั้งค่า';

  @override
  String get setting_title => 'การตั้งค่า';

  @override
  String get clear_cache => 'ล้างแคช';

  @override
  String get account => 'บัญชีผู้ใช้';

  @override
  String get change_username => 'เปลี่ยนชื่อบัญชีผู้ใช้';

  @override
  String get update => 'แก้ไข';

  @override
  String get clear_cache_complete => 'ล้างแคชสำเร็จ';
}
