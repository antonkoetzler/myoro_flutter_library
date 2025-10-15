import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_input_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroInputWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroInputWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroInputWidgetShowcaseScreenThemeExtension>
    with _$MyoroInputWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroInputWidgetShowcaseScreenThemeExtension({required this.suffixBorderRadius, required this.suffixSize});

  MyoroInputWidgetShowcaseScreenThemeExtension.fake()
    : suffixBorderRadius = myoroFake<BorderRadius>(),
      suffixSize = faker.randomGenerator.decimal(scale: 100);

  MyoroInputWidgetShowcaseScreenThemeExtension.builder()
    : suffixBorderRadius = BorderRadius.circular(kMyoroBorderRadius),
      suffixSize = 30;

  /// [BorderRadius] of [_Suffix].
  final BorderRadius suffixBorderRadius;

  /// Size of [_Suffix]'s [Image].
  final double suffixSize;

  @override
  MyoroInputWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroInputWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroInputWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      suffixBorderRadius: BorderRadius.lerp(suffixBorderRadius, other.suffixBorderRadius, t),
      suffixSize: lerpDouble(suffixSize, other.suffixSize, t),
    );
  }
}
