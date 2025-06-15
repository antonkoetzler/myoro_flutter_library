import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_form_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFormWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroFormWidgetShowcaseThemeExtension extends ThemeExtension<MyoroFormWidgetShowcaseThemeExtension>
    with _$MyoroFormWidgetShowcaseThemeExtensionMixin {
  /// [BorderRadius] of [_Kitty].
  final BorderRadius kittyBorderRadius;

  /// Size of [_Kitty]'s [Image].
  final double kittySize;

  const MyoroFormWidgetShowcaseThemeExtension({required this.kittyBorderRadius, required this.kittySize});

  MyoroFormWidgetShowcaseThemeExtension.fake()
    : kittyBorderRadius = myoroFake<BorderRadius>(),
      kittySize = faker.randomGenerator.decimal(scale: 50);

  MyoroFormWidgetShowcaseThemeExtension.builder()
    : kittyBorderRadius = BorderRadius.circular(kMyoroBorderLength),
      kittySize = 50;

  @override
  MyoroFormWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroFormWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroFormWidgetShowcaseThemeExtension) return this;
    return copyWith(
      kittyBorderRadius: BorderRadius.lerp(kittyBorderRadius, other.kittyBorderRadius, t),
      kittySize: lerpDouble(kittySize, other.kittySize, t),
    );
  }
}
