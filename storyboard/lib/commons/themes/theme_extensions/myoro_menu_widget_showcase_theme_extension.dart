import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroMenuWidgetShowcase].
final class MyoroMenuWidgetShowcaseThemeExtension extends ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension> {
  /// Initial value of [_ItemCountOption].
  final int itemCountOptionInitialValue;

  /// Max value of [_ItemCountOption].
  final int itemCountOptionMaxValue;

  /// Text style of [_ItemCountOption].
  final TextStyle itemCountOptionTextStyle;

  const MyoroMenuWidgetShowcaseThemeExtension({
    required this.itemCountOptionInitialValue,
    required this.itemCountOptionMaxValue,
    required this.itemCountOptionTextStyle,
  });

  @override
  MyoroMenuWidgetShowcaseThemeExtension copyWith({
    int? itemCountOptionInitialValue,
    int? itemCountOptionMaxValue,
    TextStyle? itemCountOptionTextStyle,
  }) {
    return MyoroMenuWidgetShowcaseThemeExtension(
      itemCountOptionInitialValue: itemCountOptionInitialValue ?? this.itemCountOptionInitialValue,
      itemCountOptionMaxValue: itemCountOptionMaxValue ?? this.itemCountOptionMaxValue,
      itemCountOptionTextStyle: itemCountOptionTextStyle ?? this.itemCountOptionTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroMenuWidgetShowcaseThemeExtension) return this;
    return copyWith(
      itemCountOptionInitialValue: MyoroLerpHelper.lerp(itemCountOptionInitialValue, other.itemCountOptionInitialValue, t),
      itemCountOptionMaxValue: MyoroLerpHelper.lerp(itemCountOptionMaxValue, other.itemCountOptionMaxValue, t),
      itemCountOptionTextStyle: TextStyle.lerp(itemCountOptionTextStyle, other.itemCountOptionTextStyle, t),
    );
  }
}
