import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_icon_text_button_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroIconTextButtonWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroIconTextButtonWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroIconTextButtonWidgetShowcaseThemeExtension>
    with _$MyoroIconTextButtonWidgetShowcaseThemeExtensionMixin {
  const MyoroIconTextButtonWidgetShowcaseThemeExtension();

  const MyoroIconTextButtonWidgetShowcaseThemeExtension.fake();

  const MyoroIconTextButtonWidgetShowcaseThemeExtension.builder();

  @override
  MyoroIconTextButtonWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroIconTextButtonWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
