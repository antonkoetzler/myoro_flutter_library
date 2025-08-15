import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_bar_graph_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroBarGraph].
@immutable
@myoroThemeExtension
class MyoroBarGraphThemeExtension extends ThemeExtension<MyoroBarGraphThemeExtension>
    with _$MyoroBarGraphThemeExtensionMixin {
  const MyoroBarGraphThemeExtension({
    required this.border,
    required this.barColor,
    required this.barBorderRadius,
    required this.sideTitleTextStyle,
    required this.sideTitleInterval,
    required this.verticalSideTitleReversedSize,
    required this.horizontalSideTitleReversedSize,
  });

  // coverage:ignore-start
  MyoroBarGraphThemeExtension.fake()
    : border = myoroFake<Border>(),
      barColor = myoroFake<Color>(),
      barBorderRadius = myoroFake<BorderRadius>(),
      sideTitleTextStyle = myoroFake<TextStyle>(),
      sideTitleInterval = faker.randomGenerator.decimal(),
      verticalSideTitleReversedSize = faker.randomGenerator.decimal(),
      horizontalSideTitleReversedSize = faker.randomGenerator.decimal();
  // coverage:ignore-end

  MyoroBarGraphThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : border = Border.all(width: 2, color: colorScheme.onPrimary),
      barColor = colorScheme.onPrimary,
      barBorderRadius = BorderRadius.zero,
      sideTitleTextStyle = textTheme.bodySmall!,
      sideTitleInterval = 0.2,
      verticalSideTitleReversedSize = 48,
      horizontalSideTitleReversedSize = 22;

  /// Border of the graph's content (the square holding the bars).
  final Border border;

  /// Default color of a bar.
  final Color barColor;

  /// Border radius of a bar.
  final BorderRadius barBorderRadius;

  /// Text style of [_SideTitle].
  final TextStyle sideTitleTextStyle;

  /// Interval of the [_SideTitle]s on an axis.
  final double sideTitleInterval;

  /// Width of a vertical (y axis) [_SideTitle].
  final double verticalSideTitleReversedSize;

  /// Height of a horizontal (x axis) [_SideTitle].
  final double horizontalSideTitleReversedSize;

  @override
  MyoroBarGraphThemeExtension lerp(covariant ThemeExtension<MyoroBarGraphThemeExtension>? other, double t) {
    if (other is! MyoroBarGraphThemeExtension) return this;
    return copyWith(
      border: Border.lerp(border, other.border, t),
      barColor: Color.lerp(barColor, other.barColor, t),
      barBorderRadius: BorderRadius.lerp(barBorderRadius, other.barBorderRadius, t),
      sideTitleTextStyle: TextStyle.lerp(sideTitleTextStyle, other.sideTitleTextStyle, t),
      sideTitleInterval: lerpDouble(sideTitleInterval, other.sideTitleInterval, t),
      verticalSideTitleReversedSize: lerpDouble(verticalSideTitleReversedSize, other.verticalSideTitleReversedSize, t),
      horizontalSideTitleReversedSize: lerpDouble(
        horizontalSideTitleReversedSize,
        other.horizontalSideTitleReversedSize,
        t,
      ),
    );
  }
}
