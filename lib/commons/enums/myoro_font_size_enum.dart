import 'package:faker/faker.dart';

/// Available font sizes that should be used.
enum MyoroFontSizeEnum {
  tiny(12),
  small(16),
  medium(18),
  large(20);

  final double size;

  const MyoroFontSizeEnum(this.size);

  factory MyoroFontSizeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isTiny => this == tiny;
  bool get isSmall => this == small;
  bool get isMedium => this == medium;
  bool get isLarge => this == large;
}
