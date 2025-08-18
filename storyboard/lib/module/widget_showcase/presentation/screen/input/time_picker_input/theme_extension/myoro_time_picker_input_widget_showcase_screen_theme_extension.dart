import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_time_picker_input_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTimePickerInputWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroTimePickerInputWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroTimePickerInputWidgetShowcaseScreenThemeExtension>
    with _$MyoroTimePickerInputWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroTimePickerInputWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroTimePickerInputWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroTimePickerInputWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroTimePickerInputWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroTimePickerInputWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
