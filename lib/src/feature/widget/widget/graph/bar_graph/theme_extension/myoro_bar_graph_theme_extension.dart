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
    with _$MyoroBarGraphThemeExtensionMixin
    implements MyoroBarGraphStyle {
  const MyoroBarGraphThemeExtension({
    this.border,
    this.barColor,
    this.barBorderRadius,
    this.sideTitleTextStyle,
    this.sideTitleInterval,
    this.verticalSideTitleReversedSize,
    this.horizontalSideTitleReversedSize,
  });

  // coverage:ignore-start
  MyoroBarGraphThemeExtension.fake()
    : border = faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      barColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      barBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      sideTitleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      sideTitleInterval = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      verticalSideTitleReversedSize = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      horizontalSideTitleReversedSize = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
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
  @override
  final Border? border;

  /// Default color of a bar.
  @override
  final Color? barColor;

  /// Border radius of a bar.
  @override
  final BorderRadius? barBorderRadius;

  /// Text style of [_SideTitle].
  @override
  final TextStyle? sideTitleTextStyle;

  /// Interval of the [_SideTitle]s on an axis.
  @override
  final double? sideTitleInterval;

  /// Width of a vertical (y axis) [_SideTitle].
  @override
  final double? verticalSideTitleReversedSize;

  /// Height of a horizontal (x axis) [_SideTitle].
  @override
  final double? horizontalSideTitleReversedSize;

  @override
  MyoroBarGraphThemeExtension lerp(covariant ThemeExtension<MyoroBarGraphThemeExtension>? other, double t) {
    if (other is! MyoroBarGraphThemeExtension) return this;

    final border = Border.lerp(this.border, other.border, t);
    final barColor = Color.lerp(this.barColor, other.barColor, t);
    final barBorderRadius = BorderRadius.lerp(this.barBorderRadius, other.barBorderRadius, t);
    final sideTitleTextStyle = TextStyle.lerp(this.sideTitleTextStyle, other.sideTitleTextStyle, t);
    final sideTitleInterval = lerpDouble(this.sideTitleInterval, other.sideTitleInterval, t);
    final verticalSideTitleReversedSize = lerpDouble(
      this.verticalSideTitleReversedSize,
      other.verticalSideTitleReversedSize,
      t,
    );
    final horizontalSideTitleReversedSize = lerpDouble(
      this.horizontalSideTitleReversedSize,
      other.horizontalSideTitleReversedSize,
      t,
    );

    return copyWith(
      border: border,
      borderProvided: border != null,
      barColor: barColor,
      barColorProvided: barColor != null,
      barBorderRadius: barBorderRadius,
      barBorderRadiusProvided: barBorderRadius != null,
      sideTitleTextStyle: sideTitleTextStyle,
      sideTitleTextStyleProvided: sideTitleTextStyle != null,
      sideTitleInterval: sideTitleInterval,
      sideTitleIntervalProvided: sideTitleInterval != null,
      verticalSideTitleReversedSize: verticalSideTitleReversedSize,
      verticalSideTitleReversedSizeProvided: verticalSideTitleReversedSize != null,
      horizontalSideTitleReversedSize: horizontalSideTitleReversedSize,
      horizontalSideTitleReversedSizeProvided: horizontalSideTitleReversedSize != null,
    );
  }
}
