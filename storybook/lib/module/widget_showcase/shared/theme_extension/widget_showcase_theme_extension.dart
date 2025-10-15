import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] to store common styling fields in this module.
@immutable
@myoroThemeExtension
final class WidgetShowcaseThemeExtension extends ThemeExtension<WidgetShowcaseThemeExtension>
    with _$WidgetShowcaseThemeExtensionMixin {
  const WidgetShowcaseThemeExtension({
    required this.spacing,
    required this.labelTextStyle,
    required this.contentPadding,
  });

  WidgetShowcaseThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      labelTextStyle = myoroFake<TextStyle>(),
      contentPadding = myoroFake<EdgeInsets>();

  WidgetShowcaseThemeExtension.builder(TextTheme textTheme)
    : spacing = 10,
      labelTextStyle = textTheme.titleLarge!,
      contentPadding = const EdgeInsets.all(kMyoroMultiplier * 8);

  /// Spacing of [Widget]s.
  final double spacing;

  /// [TextStyle] of the label (title) of a widget showcase option.
  final TextStyle labelTextStyle;

  /// Content [EdgeInsets].
  final EdgeInsets contentPadding;

  @override
  ThemeExtension<WidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
    );
  }
}
