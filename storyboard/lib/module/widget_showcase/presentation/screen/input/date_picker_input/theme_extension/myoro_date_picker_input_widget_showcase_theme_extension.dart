import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_date_picker_input_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDatePickerInputWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroDatePickerInputWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroDatePickerInputWidgetShowcaseThemeExtension>
    with _$MyoroDatePickerInputWidgetShowcaseThemeExtensionMixin {
  const MyoroDatePickerInputWidgetShowcaseThemeExtension();

  const MyoroDatePickerInputWidgetShowcaseThemeExtension.fake();

  const MyoroDatePickerInputWidgetShowcaseThemeExtension.builder();

  @override
  MyoroDatePickerInputWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroDatePickerInputWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
