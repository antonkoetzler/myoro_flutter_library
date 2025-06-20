import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_table_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTableWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroTableWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroTableWidgetShowcaseScreenThemeExtension>
    with _$MyoroTableWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroTableWidgetShowcaseScreenThemeExtension();

  const MyoroTableWidgetShowcaseScreenThemeExtension.fake();

  const MyoroTableWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroTableWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroTableWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
