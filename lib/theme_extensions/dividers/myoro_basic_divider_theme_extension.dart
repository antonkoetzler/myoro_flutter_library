part of '../../widgets/dividers/myoro_basic_divider.dart';

/// [ThemeExtension] for [MyoroBasicDivider].
@immutable
class MyoroBasicDividerThemeExtension
    extends ThemeExtension<MyoroBasicDividerThemeExtension> {
  /// [MyoroColorDesignSystem.secondary] by default.
  final Color color;

  /// Width of the divider. 2 by default.
  final double shortValue;

  /// Height of the divider. [double.infinity] by default.
  final double longValue;

  const MyoroBasicDividerThemeExtension({
    required this.color,
    required this.shortValue,
    required this.longValue,
  });

  MyoroBasicDividerThemeExtension.builder(ColorScheme colorScheme)
    : color = colorScheme.onPrimary,
      shortValue = kMyoroBorderLength,
      longValue = double.infinity;

  MyoroBasicDividerThemeExtension.fake()
    : color = myoroFake<Color>(),
      shortValue = faker.randomGenerator.decimal(),
      longValue = faker.randomGenerator.decimal();

  @override
  MyoroBasicDividerThemeExtension copyWith({
    Color? color,
    double? shortValue,
    double? longValue,
  }) {
    return MyoroBasicDividerThemeExtension(
      color: color ?? this.color,
      shortValue: shortValue ?? this.shortValue,
      longValue: longValue ?? this.longValue,
    );
  }

  @override
  MyoroBasicDividerThemeExtension lerp(
    covariant ThemeExtension<MyoroBasicDividerThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroBasicDividerThemeExtension) return this;
    return copyWith(
      color: Color.lerp(color, other.color, t),
      shortValue: lerpDouble(shortValue, other.shortValue, t),
      longValue: lerpDouble(longValue, other.longValue, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBasicDividerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.color == color &&
        other.shortValue == shortValue &&
        other.longValue == longValue;
  }

  @override
  int get hashCode {
    return Object.hash(color, shortValue, longValue);
  }

  @override
  String toString() =>
      'MyoroBasicDividerThemeExtension(\n'
      '  color: $color,\n'
      '  shortValue: $shortValue,\n'
      '  longValue: $longValue,\n'
      ');';
}
