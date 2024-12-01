import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroDialogModal].
final class MyoroDialogModalWidgetShowcaseThemeExtension extends ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension> {
  const MyoroDialogModalWidgetShowcaseThemeExtension();

  @override
  MyoroDialogModalWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
