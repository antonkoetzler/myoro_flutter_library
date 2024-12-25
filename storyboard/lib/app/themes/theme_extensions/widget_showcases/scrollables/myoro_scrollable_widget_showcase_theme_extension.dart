import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroScrollableWidgetShowcase].
final class MyoroScrollableWidgetShowcaseThemeExtension extends ThemeExtension<MyoroScrollableWidgetShowcaseThemeExtension> {
  /// [MyoroHoverButtonConfiguration.bordered] of [_Item].
  final bool itemBordered;

  /// [EdgeInsets] of [_Item].
  final EdgeInsets itemPadding;

  const MyoroScrollableWidgetShowcaseThemeExtension({
    required this.itemBordered,
    required this.itemPadding,
  });

  @override
  MyoroScrollableWidgetShowcaseThemeExtension copyWith({
    bool? itemBordered,
    EdgeInsets? itemPadding,
  }) {
    return MyoroScrollableWidgetShowcaseThemeExtension(
      itemBordered: itemBordered ?? this.itemBordered,
      itemPadding: itemPadding ?? this.itemPadding,
    );
  }

  @override
  ThemeExtension<MyoroScrollableWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroScrollableWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroScrollableWidgetShowcaseThemeExtension) return this;
    return copyWith(
      itemBordered: MyoroLerpHelper.lerp(itemBordered, other.itemBordered, t),
      itemPadding: EdgeInsets.lerp(itemPadding, other.itemPadding, t),
    );
  }
}