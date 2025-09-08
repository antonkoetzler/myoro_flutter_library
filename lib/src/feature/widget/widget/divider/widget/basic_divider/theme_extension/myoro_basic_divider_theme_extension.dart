import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_basic_divider_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroBasicDivider].
@immutable
@myoroThemeExtension
final class MyoroBasicDividerThemeExtension extends MyoroDividerThemeExtension<MyoroBasicDividerThemeExtension>
    with _$MyoroBasicDividerThemeExtensionMixin {
  const MyoroBasicDividerThemeExtension({super.color, super.shortValue, super.longValue});

  factory MyoroBasicDividerThemeExtension.builder(ColorScheme colorScheme) {
    return MyoroBasicDividerThemeExtension(
      color: faker.randomGenerator.boolean() ? colorScheme.onPrimary : null,
      shortValue: faker.randomGenerator.boolean() ? kMyoroBorderWidth : null,
      longValue: faker.randomGenerator.boolean() ? double.infinity : null,
    );
  }

  factory MyoroBasicDividerThemeExtension.fromResizeDividerThemeExtension(
    MyoroResizeDividerThemeExtension themeExtension,
  ) {
    return MyoroBasicDividerThemeExtension(
      color: themeExtension.color,
      shortValue: themeExtension.shortValue,
      longValue: themeExtension.longValue,
    );
  }

  // coverage:ignore-start
  factory MyoroBasicDividerThemeExtension.fake() {
    return MyoroBasicDividerThemeExtension(
      color: myoroFake<Color>(),
      shortValue: faker.randomGenerator.decimal(),
      longValue: faker.randomGenerator.decimal(),
    );
  }
  // coverage:ignore-end

  @override
  MyoroBasicDividerThemeExtension lerp(covariant ThemeExtension<MyoroBasicDividerThemeExtension>? other, double t) {
    if (other is! MyoroBasicDividerThemeExtension) return this;

    final color = Color.lerp(this.color, other.color, t);
    final shortValue = lerpDouble(this.shortValue, other.shortValue, t);
    final longValue = lerpDouble(this.longValue, other.longValue, t);

    return copyWith(
      color: color,
      colorProvided: color != null,
      shortValue: shortValue,
      shortValueProvided: shortValue != null,
      longValue: longValue,
      longValueProvided: longValue != null,
    );
  }
}
