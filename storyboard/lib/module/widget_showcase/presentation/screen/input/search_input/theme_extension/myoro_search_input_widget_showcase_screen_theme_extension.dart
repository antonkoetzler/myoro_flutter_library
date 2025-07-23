import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_search_input_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSearchInputWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroSearchInputWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroSearchInputWidgetShowcaseScreenThemeExtension>
    with _$MyoroSearchInputWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroSearchInputWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroSearchInputWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroSearchInputWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroSearchInputWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroSearchInputWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
