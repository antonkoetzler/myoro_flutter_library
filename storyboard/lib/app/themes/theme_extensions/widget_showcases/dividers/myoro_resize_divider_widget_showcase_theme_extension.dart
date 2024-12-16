import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroResizeDividerWidgetShowcase].
final class MyoroResizeDividerWidgetShowcaseThemeExtension extends ThemeExtension<MyoroResizeDividerWidgetShowcaseThemeExtension> {
  /// Color of the [Container]s beside the divider.
  final Color containerColor;

  /// Padding of [_AreYouSilly].
  final EdgeInsets areYouSillyPadding;

  const MyoroResizeDividerWidgetShowcaseThemeExtension({
    required this.containerColor,
    required this.areYouSillyPadding,
  });

  @override
  MyoroResizeDividerWidgetShowcaseThemeExtension copyWith({
    Color? containerColor,
    EdgeInsets? areYouSillyPadding,
  }) {
    return MyoroResizeDividerWidgetShowcaseThemeExtension(
      containerColor: containerColor ?? this.containerColor,
      areYouSillyPadding: areYouSillyPadding ?? this.areYouSillyPadding,
    );
  }

  @override
  ThemeExtension<MyoroResizeDividerWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroResizeDividerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroResizeDividerWidgetShowcaseThemeExtension) return this;
    return copyWith(
      containerColor: Color.lerp(containerColor, other.containerColor, t),
      areYouSillyPadding: EdgeInsets.lerp(areYouSillyPadding, other.areYouSillyPadding, t),
    );
  }
}
