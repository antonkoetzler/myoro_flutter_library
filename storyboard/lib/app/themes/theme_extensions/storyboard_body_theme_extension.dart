import 'dart:ui';

import 'package:flutter/material.dart';

/// [ThemeExtension] for [StoryboardBody].
final class StoryboardBodyThemeExtension extends ThemeExtension<StoryboardBodyThemeExtension> {
  /// Minimum width of the side bar.
  final double sideBarMinWidth;

  const StoryboardBodyThemeExtension({
    required this.sideBarMinWidth,
  });

  @override
  StoryboardBodyThemeExtension copyWith({
    double? sideBarMinWidth,
  }) {
    return StoryboardBodyThemeExtension(
      sideBarMinWidth: sideBarMinWidth ?? this.sideBarMinWidth,
    );
  }

  @override
  StoryboardBodyThemeExtension lerp(StoryboardBodyThemeExtension? other, double t) {
    if (other is! StoryboardBodyThemeExtension) return this;
    return StoryboardBodyThemeExtension(
      sideBarMinWidth: lerpDouble(sideBarMinWidth, other.sideBarMinWidth, t) ?? sideBarMinWidth,
    );
  }
}
