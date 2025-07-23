import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_basic_divider_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroBasicDividerWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroBasicDividerWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroBasicDividerWidgetShowcaseScreenThemeExtension>
    with _$MyoroBasicDividerWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroBasicDividerWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroBasicDividerWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroBasicDividerWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroBasicDividerWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroBasicDividerWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
