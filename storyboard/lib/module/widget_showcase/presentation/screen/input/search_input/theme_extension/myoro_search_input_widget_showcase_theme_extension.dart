import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_search_input_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSearchInputWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroSearchInputWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroSearchInputWidgetShowcaseThemeExtension>
    with _$MyoroSearchInputWidgetShowcaseThemeExtensionMixin {
  const MyoroSearchInputWidgetShowcaseThemeExtension();

  const MyoroSearchInputWidgetShowcaseThemeExtension.fake();

  const MyoroSearchInputWidgetShowcaseThemeExtension.builder();

  @override
  MyoroSearchInputWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroSearchInputWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
