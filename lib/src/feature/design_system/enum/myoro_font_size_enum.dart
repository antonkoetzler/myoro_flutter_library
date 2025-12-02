import 'package:faker/faker.dart' hide Color;

/// Available font sizes that should be used.
enum MyoroFontSizeEnum {
  /// Extra tiny font size.
  extraTiny(10),

  /// Tiny font size.
  tiny(12),

  /// Small font size.
  small(14),

  /// Medium font size.
  medium(18),

  /// Large font size.
  large(22),

  /// Extra large font size.
  extraLarge(26);

  /// Font size.
  final double size;

  /// Default constructor.
  const MyoroFontSizeEnum(this.size);

  /// Factory constructor.
  factory MyoroFontSizeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Checks if the font size is extra tiny.
  bool get isExtraTiny => this == extraTiny;

  /// Checks if the font size is tiny.
  bool get isTiny => this == tiny;

  /// Checks if the font size is small.
  bool get isSmall => this == small;

  /// Checks if the font size is medium.
  bool get isMedium => this == medium;

  /// Checks if the font size is large.
  bool get isLarge => this == large;

  /// Checks if the font size is extra large.
  bool get isExtraLarge => this == extraLarge;
}
