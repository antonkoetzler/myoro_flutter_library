import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'box_border_widget_showcase_option_theme_extension.dart';

/// [ThemeExtension] of [BoxBorderWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class BoxBorderWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<BoxBorderWidgetShowcaseOptionThemeExtension>
    with _$BoxBorderWidgetShowcaseOptionThemeExtensionMixin {
  const BoxBorderWidgetShowcaseOptionThemeExtension();

  const BoxBorderWidgetShowcaseOptionThemeExtension.fake();

  const BoxBorderWidgetShowcaseOptionThemeExtension.builder();
}
