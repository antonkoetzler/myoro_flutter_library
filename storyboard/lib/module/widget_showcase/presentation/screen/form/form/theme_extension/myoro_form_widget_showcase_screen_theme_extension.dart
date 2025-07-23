import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_form_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFormWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroFormWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroFormWidgetShowcaseScreenThemeExtension>
    with _$MyoroFormWidgetShowcaseScreenThemeExtensionMixin {
  /// [BorderRadius] of [_Kitty].
  final BorderRadius kittyBorderRadius;

  /// Size of [_Kitty]'s [Image].
  final double kittySize;

  const MyoroFormWidgetShowcaseScreenThemeExtension({required this.kittyBorderRadius, required this.kittySize});

  // coverage:ignore-start
  MyoroFormWidgetShowcaseScreenThemeExtension.fake()
    : kittyBorderRadius = myoroFake<BorderRadius>(),
      kittySize = faker.randomGenerator.decimal(scale: 50);
  // coverage:ignore-end

  MyoroFormWidgetShowcaseScreenThemeExtension.builder()
    : kittyBorderRadius = BorderRadius.circular(kMyoroBorderLength),
      kittySize = 50;

  @override
  MyoroFormWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroFormWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroFormWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      kittyBorderRadius: BorderRadius.lerp(kittyBorderRadius, other.kittyBorderRadius, t),
      kittySize: lerpDouble(kittySize, other.kittySize, t),
    );
  }
}
