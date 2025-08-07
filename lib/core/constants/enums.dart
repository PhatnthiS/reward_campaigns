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

enum CTAType {
  join('Join Now'),
  subscribe('Subscribe'),
  redeem('Redeem Point');

  final String label;

  const CTAType(this.label);

  static CTAType fromCode(String code) {
    return CTAType.values.firstWhere(
      (e) => e.name.toLowerCase() == code.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid CTA type: $code'),
    );
  }
}
