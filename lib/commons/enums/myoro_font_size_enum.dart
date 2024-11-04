import 'package:faker/faker.dart';

/// Available font sizes that should be used.
enum MyoroFontSizeEnum {
  small(14),
  medium(20),
  large(26);

  final double size;

  const MyoroFontSizeEnum(this.size);

  factory MyoroFontSizeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isSmall => this == small;
  bool get isMedium => this == medium;
  bool get isLarge => this == large;
}
