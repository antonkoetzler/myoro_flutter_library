import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [WidgetShowcase].
final class WidgetShowcaseThemeExtension extends ThemeExtension<WidgetShowcaseThemeExtension> {
  /// [IconData] of [_ToggleWidgetOptionsButton].
  final IconData toggleWidgetOptionsButtonIcon;

  /// Offset of [_ToggleWidgetOptionsButton].
  final double toggleWidgetOptionsButtonOffset;

  const WidgetShowcaseThemeExtension({
    required this.toggleWidgetOptionsButtonIcon,
    required this.toggleWidgetOptionsButtonOffset,
  });

  @override
  WidgetShowcaseThemeExtension copyWith({
    IconData? toggleWidgetOptionsButtonIcon,
    double? toggleWidgetOptionsButtonOffset,
  }) {
    return WidgetShowcaseThemeExtension(
      toggleWidgetOptionsButtonIcon: toggleWidgetOptionsButtonIcon ?? this.toggleWidgetOptionsButtonIcon,
      toggleWidgetOptionsButtonOffset: toggleWidgetOptionsButtonOffset ?? this.toggleWidgetOptionsButtonOffset,
    );
  }

  @override
  WidgetShowcaseThemeExtension lerp(WidgetShowcaseThemeExtension? other, double t) {
    return copyWith(
      toggleWidgetOptionsButtonIcon: LerpHelper.lerp(toggleWidgetOptionsButtonIcon, other?.toggleWidgetOptionsButtonIcon, t),
      toggleWidgetOptionsButtonOffset: lerpDouble(toggleWidgetOptionsButtonOffset, other?.toggleWidgetOptionsButtonOffset, t),
    );
  }
}
