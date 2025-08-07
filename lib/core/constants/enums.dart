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
