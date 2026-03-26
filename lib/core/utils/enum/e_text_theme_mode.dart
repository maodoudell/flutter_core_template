enum ETextThemeMode {
  small('small'),
  medium('medium'),
  large('large');

  const ETextThemeMode(this.value);
  final String value;
  factory ETextThemeMode.fromString() {
    return ETextThemeMode.medium;
  }
}
