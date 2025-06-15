import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroResizeDivider].
@immutable
@myoroThemeExtension
class MyoroResizeDividerThemeExtension extends ThemeExtension<MyoroResizeDividerThemeExtension>
    with _$MyoroResizeDividerThemeExtensionMixin {
  /// [MyoroColorDesignSystem.secondary] by default.
  final Color secondary;

  /// Width of the resize button. 10 by default.
  final double resizeButtonShortValue;

  /// Height of the resize button. 30 by default.
  final double resizeButtonLongValue;

  /// Border radius of the resize button. [kMyoroBorderRadius] by default.
  final BorderRadius resizeButtonBorderRadius;

  const MyoroResizeDividerThemeExtension({
    required this.secondary,
    required this.resizeButtonShortValue,
    required this.resizeButtonLongValue,
    required this.resizeButtonBorderRadius,
  });

  MyoroResizeDividerThemeExtension.fake()
    : secondary = myoroFake<Color>(),
      resizeButtonShortValue = faker.randomGenerator.decimal(),
      resizeButtonLongValue = faker.randomGenerator.decimal(),
      resizeButtonBorderRadius = myoroFake<BorderRadius>();

  MyoroResizeDividerThemeExtension.builder(ColorScheme colorScheme)
    : secondary = colorScheme.onPrimary,
      resizeButtonShortValue = 8,
      resizeButtonLongValue = 8,
      resizeButtonBorderRadius = BorderRadius.circular(kMyoroBorderRadiusLength);

  @override
  MyoroResizeDividerThemeExtension lerp(covariant ThemeExtension<MyoroResizeDividerThemeExtension>? other, double t) {
    if (other is! MyoroResizeDividerThemeExtension) return this;
    return copyWith(
      secondary: Color.lerp(secondary, other.secondary, t),
      resizeButtonShortValue: lerpDouble(resizeButtonShortValue, other.resizeButtonShortValue, t),
      resizeButtonLongValue: lerpDouble(resizeButtonLongValue, other.resizeButtonLongValue, t),
      resizeButtonBorderRadius: BorderRadius.lerp(resizeButtonBorderRadius, other.resizeButtonBorderRadius, t),
    );
  }
}
