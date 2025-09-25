import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_basic_divider_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroBasicDivider].
@immutable
@myoroThemeExtension
final class MyoroBasicDividerThemeExtension extends ThemeExtension<MyoroBasicDividerThemeExtension>
    with _$MyoroBasicDividerThemeExtensionMixin
    implements MyoroBasicDividerStyle {
  const MyoroBasicDividerThemeExtension({this.color, this.shortValue, this.longValue});

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
  final Color? color;

  @override
  final double? shortValue;

  @override
  final double? longValue;

  factory MyoroBasicDividerThemeExtension.builder(ColorScheme colorScheme) {
    return MyoroBasicDividerThemeExtension(
      color: colorScheme.onPrimary,
      shortValue: kMyoroBorderWidth,
      longValue: double.infinity,
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

  @override
  MyoroBasicDividerThemeExtension lerp(covariant ThemeExtension<MyoroBasicDividerThemeExtension>? other, double t) {
    if (other is! MyoroBasicDividerThemeExtension) return this;

    final color = Color.lerp(this.color, other.color, t);
    final shortValue = lerpDouble(this.shortValue, other.shortValue, t);
    final longValue = myoroDoubleLerp(this.longValue, other.longValue, t);

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
