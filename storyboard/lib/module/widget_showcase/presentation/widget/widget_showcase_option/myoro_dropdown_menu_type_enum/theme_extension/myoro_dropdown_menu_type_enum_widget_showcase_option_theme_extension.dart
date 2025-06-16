import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdown_menu_type_enum_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDropdownMenuTypeEnumWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtension>
    with _$MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtensionMixin {
  const MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtension();

  const MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtension.fake();

  const MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtension.builder();

  @override
  MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MyoroDropdownMenuTypeEnumWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
