import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_table_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTableWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroTableWidgetShowcaseThemeExtension extends ThemeExtension<MyoroTableWidgetShowcaseThemeExtension>
    with _$MyoroTableWidgetShowcaseThemeExtensionMixin {
  const MyoroTableWidgetShowcaseThemeExtension();

  const MyoroTableWidgetShowcaseThemeExtension.fake();

  const MyoroTableWidgetShowcaseThemeExtension.builder();

  @override
  MyoroTableWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroTableWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
