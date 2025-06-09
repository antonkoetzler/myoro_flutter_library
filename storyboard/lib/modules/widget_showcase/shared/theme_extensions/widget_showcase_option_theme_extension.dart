import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] to store common values of widget showcase options (spacings, [TextStyle]s, etc).
///
/// TODO: Make sure that all widget showcase options are utilizing these options.
///
/// TODO: Rename to widget showcase module theme extension or some shit.
@immutable
@myoroThemeExtension
final class WidgetShowcaseOptionThemeExtension extends ThemeExtension<WidgetShowcaseOptionThemeExtension>
    with _$WidgetShowcaseOptionThemeExtensionMixin {
  const WidgetShowcaseOptionThemeExtension({required this.spacing, required this.labelTextStyle});

  WidgetShowcaseOptionThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      labelTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  WidgetShowcaseOptionThemeExtension.builder(TextTheme textTheme)
    : spacing = 10,
      labelTextStyle = textTheme.titleLarge!;

  /// Spacing of [Widget]s.
  final double spacing;

  /// [TextStyle] of the label (title) of a widget showcase option.
  final TextStyle labelTextStyle;

  @override
  ThemeExtension<WidgetShowcaseOptionThemeExtension> lerp(
    covariant ThemeExtension<WidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseOptionThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
    );
  }
}
