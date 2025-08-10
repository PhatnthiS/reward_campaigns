import 'package:json_annotation/json_annotation.dart';

enum Language {
  EN('en'),
  TH('th');

  final String code;

  const Language(this.code);

  static Language fromCode(String code) {
    return Language.values.firstWhere(
      (e) => e.code == code,
      orElse: () => Language.EN,
    );
  }
}

@JsonEnum()
enum CTAType {
  @JsonValue('join')
  join,
  @JsonValue('subscribe')
  subscribe,
  @JsonValue('redeem')
  redeem,
}

@JsonEnum()
enum TransactionType {
  @JsonValue('earn')
  earn,

  @JsonValue('redeem')
  redeem,

  @JsonValue('free')
  free,
}
