enum LanguageMode {
  khmer('khmer'),
  english('english');

  const LanguageMode(this.value);
  final String value;
  factory LanguageMode.fromString(String? cache) => LanguageMode.values.firstWhere((e) => e.value == cache, orElse: () => LanguageMode.khmer);

  static LanguageMode toEnum(String value) {
    LanguageMode result = LanguageMode.khmer;
    if (value == LanguageMode.khmer) {
      result = khmer;
    } else if (value == LanguageMode.english) {
      result = english;
    }
    return result;
  }
}
