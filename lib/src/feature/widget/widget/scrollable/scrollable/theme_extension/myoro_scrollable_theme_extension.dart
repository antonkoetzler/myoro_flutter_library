import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_theme_extension.g.dart';

/// Theme extension for [MyoroScrollable].
@immutable
@myoroThemeExtension
class MyoroScrollableThemeExtension extends ThemeExtension<MyoroScrollableThemeExtension>
    with _$MyoroScrollableThemeExtensionMixin
    implements MyoroScrollableStyle {
  const MyoroScrollableThemeExtension({
    this.backgroundColor,
    this.gradientTopColor,
    this.gradientBottomColor,
    this.gradientLeftColor,
    this.gradientRightColor,
    this.gradientSize,
    this.padding,
    this.margin,
    this.borderRadius,
    this.border,
    this.boxShadow,
  });

  MyoroScrollableThemeExtension.builder(ColorScheme colorScheme)
    : backgroundColor = colorScheme.onPrimary.withValues(alpha: 0.1),
      gradientTopColor = colorScheme.onPrimary.withValues(alpha: 0.1),
      gradientBottomColor = colorScheme.onPrimary.withValues(alpha: 0.1),
      gradientLeftColor = colorScheme.onPrimary.withValues(alpha: 0.1),
      gradientRightColor = colorScheme.onPrimary.withValues(alpha: 0.1),
      gradientSize = 0.1,
      padding = EdgeInsets.zero,
      margin = EdgeInsets.zero,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      border = Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      boxShadow = [BoxShadow(color: colorScheme.onPrimary.withValues(alpha: 0.1), blurRadius: kMyoroBorderRadius)];

  @override
  final Color? backgroundColor;

  @override
  final Color? gradientTopColor;

  @override
  final Color? gradientBottomColor;

  @override
  final Color? gradientLeftColor;

  @override
  final Color? gradientRightColor;

  @override
  final double? gradientSize;

  @override
  final EdgeInsets? padding;

  @override
  final EdgeInsets? margin;

  @override
  final BorderRadius? borderRadius;

  @override
  final Border? border;

  @override
  final List<BoxShadow>? boxShadow;

  @override
  MyoroScrollableThemeExtension lerp(covariant MyoroScrollableThemeExtension? other, double t) {
    if (other is! MyoroScrollableThemeExtension) return this;

    final lerpedStyle = MyoroScrollableStyle.lerp(this, other, t);

    return MyoroScrollableThemeExtension(
      backgroundColor: lerpedStyle.backgroundColor,
      gradientTopColor: lerpedStyle.gradientTopColor,
      gradientBottomColor: lerpedStyle.gradientBottomColor,
      gradientLeftColor: lerpedStyle.gradientLeftColor,
      gradientRightColor: lerpedStyle.gradientRightColor,
      gradientSize: lerpedStyle.gradientSize,
      padding: lerpedStyle.padding,
      margin: lerpedStyle.margin,
      borderRadius: lerpedStyle.borderRadius,
      border: lerpedStyle.border,
      boxShadow: lerpedStyle.boxShadow,
    );
  }
}
