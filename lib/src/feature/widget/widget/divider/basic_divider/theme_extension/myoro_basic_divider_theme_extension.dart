import 'package:faker/faker.dart' hide Color;
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
  /// Default constructor.
  const MyoroBasicDividerThemeExtension({this.color, this.shortValue, this.longValue});

  /// Fake constructor.
  factory MyoroBasicDividerThemeExtension.fake() {
    return MyoroBasicDividerThemeExtension(
      color: myoroFake<Color>(),
      shortValue: faker.randomGenerator.decimal(),
      longValue: faker.randomGenerator.decimal(),
    );
  }

  @override
  final Color? color;

  @override
  final double? shortValue;

  @override
  final double? longValue;

  /// Builder constructor.
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
  MyoroBasicDividerThemeExtension lerp(covariant MyoroBasicDividerThemeExtension? other, double t) {
    if (other is! MyoroBasicDividerThemeExtension) return this;
    final style = MyoroBasicDividerStyle.lerp(this, other, t);
    return MyoroBasicDividerThemeExtension(
      color: style.color,
      shortValue: style.shortValue,
      longValue: style.longValue,
    );
  }
}
