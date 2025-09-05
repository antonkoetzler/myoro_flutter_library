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
  const MyoroResizeDividerThemeExtension({
    this.resizeButtonColor,
    this.resizeButtonShortValue,
    this.resizeButtonLongValue,
    this.resizeButtonBorderRadius,
  });

  // coverage:ignore-start
  MyoroResizeDividerThemeExtension.fake()
    : resizeButtonColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      resizeButtonShortValue = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      resizeButtonLongValue = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      resizeButtonBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null;
  // coverage:ignore-end

  MyoroResizeDividerThemeExtension.builder(ColorScheme colorScheme)
    : resizeButtonColor = colorScheme.onPrimary,
      resizeButtonShortValue = 8,
      resizeButtonLongValue = 8,
      resizeButtonBorderRadius = BorderRadius.circular(kMyoroBorderRadius);

  /// [Color] of the resize button.
  final Color? resizeButtonColor;

  /// Width of the resize button.
  final double? resizeButtonShortValue;

  /// Height of the resize button.
  final double? resizeButtonLongValue;

  /// Border radius of the resize button.
  final BorderRadius? resizeButtonBorderRadius;

  @override
  MyoroResizeDividerThemeExtension lerp(covariant ThemeExtension<MyoroResizeDividerThemeExtension>? other, double t) {
    if (other is! MyoroResizeDividerThemeExtension) return this;

    final resizeButtonColor = Color.lerp(this.resizeButtonColor, other.resizeButtonColor, t);
    final resizeButtonShortValue = lerpDouble(this.resizeButtonShortValue, other.resizeButtonShortValue, t);
    final resizeButtonLongValue = lerpDouble(this.resizeButtonLongValue, other.resizeButtonLongValue, t);
    final resizeButtonBorderRadius = BorderRadius.lerp(
      this.resizeButtonBorderRadius,
      other.resizeButtonBorderRadius,
      t,
    );

    return copyWith(
      resizeButtonColor: resizeButtonColor,
      resizeButtonColorProvided: resizeButtonColor != null,
      resizeButtonShortValue: resizeButtonShortValue,
      resizeButtonShortValueProvided: resizeButtonShortValue != null,
      resizeButtonLongValue: resizeButtonLongValue,
      resizeButtonLongValueProvided: resizeButtonLongValue != null,
      resizeButtonBorderRadius: resizeButtonBorderRadius,
      resizeButtonBorderRadiusProvided: resizeButtonBorderRadius != null,
    );
  }
}
