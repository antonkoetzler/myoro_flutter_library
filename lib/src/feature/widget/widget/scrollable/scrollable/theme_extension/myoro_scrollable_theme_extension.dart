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
    this.gradientTopColor,
    this.gradientBottomColor,
    this.gradientLeftColor,
    this.gradientRightColor,
    this.gradientSize,
    this.gradientColor,
  });

  MyoroScrollableThemeExtension.builder(ColorScheme colorScheme)
    : gradientTopColor = colorScheme.surface,
      gradientBottomColor = colorScheme.surface,
      gradientLeftColor = colorScheme.surface,
      gradientRightColor = colorScheme.surface,
      gradientSize = 20.0,
      gradientColor = colorScheme.surface;

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
  final Color? gradientColor;

  @override
  MyoroScrollableThemeExtension lerp(covariant MyoroScrollableThemeExtension? other, double t) {
    if (other is! MyoroScrollableThemeExtension) return this;

    final lerpedStyle = MyoroScrollableStyle.lerp(this, other, t);

    return MyoroScrollableThemeExtension(
      gradientTopColor: lerpedStyle.gradientTopColor,
      gradientBottomColor: lerpedStyle.gradientBottomColor,
      gradientLeftColor: lerpedStyle.gradientLeftColor,
      gradientRightColor: lerpedStyle.gradientRightColor,
      gradientSize: lerpedStyle.gradientSize,
      gradientColor: lerpedStyle.gradientColor,
    );
  }
}
