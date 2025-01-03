import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroSnackBarWidgetShowcase].
final class MyoroSnackBarWidgetShowcaseThemeExtension extends ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] for inputs.
  final MyoroInputStyleEnum inputStyle;

  /// [MyoroHoverButtonConfiguration.bordered] of [_Widget].
  final bool widgetBordered;

  /// [IconData] of [_Child].
  final IconData childIcon;

  const MyoroSnackBarWidgetShowcaseThemeExtension({
    required this.inputStyle,
    required this.widgetBordered,
    required this.childIcon,
  });

  @override
  MyoroSnackBarWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    bool? widgetBordered,
    IconData? childIcon,
  }) {
    return MyoroSnackBarWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      widgetBordered: widgetBordered ?? this.widgetBordered,
      childIcon: childIcon ?? this.childIcon,
    );
  }

  @override
  ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSnackBarWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: MyoroLerpHelper.lerp(inputStyle, other.inputStyle, t),
      widgetBordered: MyoroLerpHelper.lerp(widgetBordered, other.widgetBordered, t),
      childIcon: MyoroLerpHelper.lerp(childIcon, other.childIcon, t),
    );
  }
}
