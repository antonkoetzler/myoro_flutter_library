import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_date_picker_input_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDatePickerInputWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroDatePickerInputWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroDatePickerInputWidgetShowcaseScreenThemeExtension>
    with _$MyoroDatePickerInputWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroDatePickerInputWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroDatePickerInputWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroDatePickerInputWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroDatePickerInputWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroDatePickerInputWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
