import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_tap_status_enum_color_builder_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTapStatusEnumColorBuilderWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension>
    with $MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtensionMixin {
  /// General spacing of [Widget]s.
  final double spacing;

  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension({required this.spacing});

  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20);

  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension.builder() : spacing = 10;

  @override
  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }
}
