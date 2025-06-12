import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_input_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroInputWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroInputWidgetShowcaseThemeExtension extends ThemeExtension<MyoroInputWidgetShowcaseThemeExtension>
    with _$MyoroInputWidgetShowcaseThemeExtensionMixin {
  /// [BorderRadius] of [_Suffix].
  final BorderRadius suffixBorderRadius;

  /// Size of [_Suffix]'s [Image].
  final double suffixSize;

  const MyoroInputWidgetShowcaseThemeExtension({required this.suffixBorderRadius, required this.suffixSize});

  MyoroInputWidgetShowcaseThemeExtension.fake()
    : suffixBorderRadius = myoroFake<BorderRadius>(),
      suffixSize = faker.randomGenerator.decimal(scale: 100);

  MyoroInputWidgetShowcaseThemeExtension.builder()
    : suffixBorderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      suffixSize = 30;

  @override
  MyoroInputWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroInputWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroInputWidgetShowcaseThemeExtension) return this;
    return copyWith(
      suffixBorderRadius: BorderRadius.lerp(suffixBorderRadius, other.suffixBorderRadius, t),
      suffixSize: lerpDouble(suffixSize, other.suffixSize, t),
    );
  }
}
