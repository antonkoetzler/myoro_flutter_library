import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_modal_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroModalWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroModalWidgetShowcaseThemeExtension extends ThemeExtension<MyoroModalWidgetShowcaseThemeExtension>
    with _$MyoroModalWidgetShowcaseThemeExtensionMixin {
  /// Size of the [Image] in the [MyoroModal].
  final double modalContentImageSize;

  const MyoroModalWidgetShowcaseThemeExtension({required this.modalContentImageSize});

  MyoroModalWidgetShowcaseThemeExtension.fake()
    : modalContentImageSize = faker.randomGenerator.decimal(scale: 100, min: 10);

  const MyoroModalWidgetShowcaseThemeExtension.builder() : modalContentImageSize = 100;

  @override
  MyoroModalWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroModalWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroModalWidgetShowcaseThemeExtension) return this;
    return copyWith(modalContentImageSize: lerpDouble(modalContentImageSize, other.modalContentImageSize, t));
  }
}
