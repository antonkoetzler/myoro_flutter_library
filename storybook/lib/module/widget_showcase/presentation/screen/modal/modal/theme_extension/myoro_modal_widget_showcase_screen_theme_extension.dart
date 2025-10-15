import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storybook/storybook.dart';

part 'myoro_modal_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroModalWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroModalWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroModalWidgetShowcaseScreenThemeExtension>
    with _$MyoroModalWidgetShowcaseScreenThemeExtensionMixin {
  /// Size of the [Image] in the [MyoroModal].
  final double modalContentImageSize;

  const MyoroModalWidgetShowcaseScreenThemeExtension({required this.modalContentImageSize});

  MyoroModalWidgetShowcaseScreenThemeExtension.fake()
    : modalContentImageSize = faker.randomGenerator.decimal(scale: 100, min: 10);

  const MyoroModalWidgetShowcaseScreenThemeExtension.builder() : modalContentImageSize = 100;

  @override
  MyoroModalWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroModalWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroModalWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(modalContentImageSize: lerpDouble(modalContentImageSize, other.modalContentImageSize, t));
  }
}
