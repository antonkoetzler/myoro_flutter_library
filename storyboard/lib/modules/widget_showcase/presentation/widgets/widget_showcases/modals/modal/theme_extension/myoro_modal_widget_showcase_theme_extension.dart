import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_modal_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroModalWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroModalWidgetShowcaseThemeExtension extends ThemeExtension<MyoroModalWidgetShowcaseThemeExtension>
    with _$MyoroModalWidgetShowcaseThemeExtension {
  const MyoroModalWidgetShowcaseThemeExtension();

  const MyoroModalWidgetShowcaseThemeExtension.fake();

  const MyoroModalWidgetShowcaseThemeExtension.builder();

  @override
  MyoroModalWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroModalWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
