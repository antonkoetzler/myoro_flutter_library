import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroMenuWidgetShowcase].
final class MyoroMenuWidgetShowcaseThemeExtension extends ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension> {
  /// Spacing in between the items in [_WidgetOptions].
  final double widgetOptionsSpacing;

  const MyoroMenuWidgetShowcaseThemeExtension({
    required this.widgetOptionsSpacing,
  });

  @override
  MyoroMenuWidgetShowcaseThemeExtension copyWith({double? widgetOptionsSpacing}) {
    return MyoroMenuWidgetShowcaseThemeExtension(
      widgetOptionsSpacing: widgetOptionsSpacing ?? this.widgetOptionsSpacing,
    );
  }

  @override
  ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroMenuWidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetOptionsSpacing: lerpDouble(widgetOptionsSpacing, other.widgetOptionsSpacing, t),
    );
  }
}
