import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_bar_graph_style.g.dart';

/// Style model of [MyoroBarGraph].
@immutable
@myoroModel
class MyoroBarGraphStyle with _$MyoroBarGraphStyleMixin {
  const MyoroBarGraphStyle({
    this.border,
    this.barColor,
    this.barBorderRadius,
    this.sideTitleTextStyle,
    this.sideTitleInterval,
    this.verticalSideTitleReversedSize,
    this.horizontalSideTitleReversedSize,
  });

  // coverage:ignore-start
  factory MyoroBarGraphStyle.fake() {
    return MyoroBarGraphStyle(
      border: faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      barColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      barBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      sideTitleTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      sideTitleInterval: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      verticalSideTitleReversedSize: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      horizontalSideTitleReversedSize: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
    );
  }
  // coverage:ignore-end

  /// Border of the graph's content (the square holding the bars).
  final Border? border;

  /// Default color of a bar.
  final Color? barColor;

  /// Border radius of a bar.
  final BorderRadius? barBorderRadius;

  /// Text style of [_SideTitle].
  final TextStyle? sideTitleTextStyle;

  /// Interval of the [_SideTitle]s on an axis.
  final double? sideTitleInterval;

  /// Width of a vertical (y axis) [_SideTitle].
  final double? verticalSideTitleReversedSize;

  /// Height of a horizontal (x axis) [_SideTitle].
  final double? horizontalSideTitleReversedSize;

  /// Copy with.
  MyoroBarGraphStyle copyWith({
    Border? border,
    bool borderProvided = true,
    Color? barColor,
    bool barColorProvided = true,
    BorderRadius? barBorderRadius,
    bool barBorderRadiusProvided = true,
    TextStyle? sideTitleTextStyle,
    bool sideTitleTextStyleProvided = true,
    double? sideTitleInterval,
    bool sideTitleIntervalProvided = true,
    double? verticalSideTitleReversedSize,
    bool verticalSideTitleReversedSizeProvided = true,
    double? horizontalSideTitleReversedSize,
    bool horizontalSideTitleReversedSizeProvided = true,
  }) {
    return MyoroBarGraphStyle(
      border: borderProvided ? (border ?? this.border) : null,
      barColor: barColorProvided ? (barColor ?? this.barColor) : null,
      barBorderRadius: barBorderRadiusProvided ? (barBorderRadius ?? this.barBorderRadius) : null,
      sideTitleTextStyle: sideTitleTextStyleProvided ? (sideTitleTextStyle ?? this.sideTitleTextStyle) : null,
      sideTitleInterval: sideTitleIntervalProvided ? (sideTitleInterval ?? this.sideTitleInterval) : null,
      verticalSideTitleReversedSize: verticalSideTitleReversedSizeProvided
          ? (verticalSideTitleReversedSize ?? this.verticalSideTitleReversedSize)
          : null,
      horizontalSideTitleReversedSize: horizontalSideTitleReversedSizeProvided
          ? (horizontalSideTitleReversedSize ?? this.horizontalSideTitleReversedSize)
          : null,
    );
  }
}
