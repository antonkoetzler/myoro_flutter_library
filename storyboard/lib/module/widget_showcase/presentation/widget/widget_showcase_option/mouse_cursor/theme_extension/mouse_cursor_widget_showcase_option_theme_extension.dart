
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'mouse_cursor_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [MouseCursorWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class MouseCursorWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MouseCursorWidgetShowcaseOptionThemeExtension>
    with _$MouseCursorWidgetShowcaseOptionThemeExtensionMixin {
  const MouseCursorWidgetShowcaseOptionThemeExtension();

  const MouseCursorWidgetShowcaseOptionThemeExtension.fake();

  const MouseCursorWidgetShowcaseOptionThemeExtension.builder();

  @override
  MouseCursorWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MouseCursorWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
