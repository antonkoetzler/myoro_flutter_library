import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTableV2WidgetShowcase].
final class MyoroTableV2WidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroTableV2WidgetShowcaseThemeExtension> {
  /// [EdgeInsets] of a [_TitleCell].
  final EdgeInsets titleCellPadding;

  const MyoroTableV2WidgetShowcaseThemeExtension({
    required this.titleCellPadding,
  });

  const MyoroTableV2WidgetShowcaseThemeExtension.builder()
    : titleCellPadding = const EdgeInsets.all(10);

  @override
  MyoroTableV2WidgetShowcaseThemeExtension copyWith({
    EdgeInsets? titleCellPadding,
  }) {
    return MyoroTableV2WidgetShowcaseThemeExtension(
      titleCellPadding: titleCellPadding ?? this.titleCellPadding,
    );
  }

  @override
  MyoroTableV2WidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroTableV2WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableV2WidgetShowcaseThemeExtension) return this;
    return copyWith(
      titleCellPadding: EdgeInsets.lerp(
        titleCellPadding,
        other.titleCellPadding,
        t,
      ),
    );
  }
}
