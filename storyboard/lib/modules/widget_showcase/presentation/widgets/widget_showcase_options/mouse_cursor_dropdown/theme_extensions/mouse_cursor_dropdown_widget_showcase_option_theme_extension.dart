import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'mouse_cursor_dropdown_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [MouseCursorDropdownWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class MouseCursorDropdownWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MouseCursorDropdownWidgetShowcaseOptionThemeExtension>
    with _$MouseCursorDropdownWidgetShowcaseOptionThemeExtensionMixin {
  const MouseCursorDropdownWidgetShowcaseOptionThemeExtension();

  const MouseCursorDropdownWidgetShowcaseOptionThemeExtension.fake();

  const MouseCursorDropdownWidgetShowcaseOptionThemeExtension.builder();

  @override
  MouseCursorDropdownWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MouseCursorDropdownWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
