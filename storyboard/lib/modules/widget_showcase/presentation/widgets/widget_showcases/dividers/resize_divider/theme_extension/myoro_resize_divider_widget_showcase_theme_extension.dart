import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_resize_divider_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroResizeDividerWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroResizeDividerWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroResizeDividerWidgetShowcaseThemeExtension>
    with _$MyoroResizeDividerWidgetShowcaseThemeExtensionMixin {
  const MyoroResizeDividerWidgetShowcaseThemeExtension();

  const MyoroResizeDividerWidgetShowcaseThemeExtension.fake();

  const MyoroResizeDividerWidgetShowcaseThemeExtension.builder();

  @override
  MyoroResizeDividerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroResizeDividerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
