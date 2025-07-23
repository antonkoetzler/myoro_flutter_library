import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_icon_text_button_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroIconTextButtonWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroIconTextButtonWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroIconTextButtonWidgetShowcaseScreenThemeExtension>
    with _$MyoroIconTextButtonWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroIconTextButtonWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroIconTextButtonWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroIconTextButtonWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroIconTextButtonWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroIconTextButtonWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
