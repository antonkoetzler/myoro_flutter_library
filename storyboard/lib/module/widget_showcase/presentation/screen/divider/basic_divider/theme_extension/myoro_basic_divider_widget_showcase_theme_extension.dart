import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_basic_divider_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroBasicDividerWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroBasicDividerWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension>
    with _$MyoroBasicDividerWidgetShowcaseThemeExtensionMixin {
  const MyoroBasicDividerWidgetShowcaseThemeExtension();

  const MyoroBasicDividerWidgetShowcaseThemeExtension.fake();

  const MyoroBasicDividerWidgetShowcaseThemeExtension.builder();

  @override
  MyoroBasicDividerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
