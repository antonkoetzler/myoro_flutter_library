import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroCircularLoaderWidgetShowcase].
final class MyoroCircularLoaderWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension> {
  /// Spacing between items in [_WidgetOptions].
  final double widgetOptionsSpacing;

  const MyoroCircularLoaderWidgetShowcaseThemeExtension({
    required this.widgetOptionsSpacing,
  });

  @override
  MyoroCircularLoaderWidgetShowcaseThemeExtension copyWith({
    double? widgetOptionsSpacing,
  }) {
    return MyoroCircularLoaderWidgetShowcaseThemeExtension(
      widgetOptionsSpacing: widgetOptionsSpacing ?? this.widgetOptionsSpacing,
    );
  }

  @override
  ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCircularLoaderWidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetOptionsSpacing: lerpDouble(widgetOptionsSpacing, other.widgetOptionsSpacing, t),
    );
  }
}
