import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_bar_graph_style.g.dart';

/// Style model of [MyoroBarGraph].
@immutable
@myoroModel
class MyoroBarGraphStyle with _$MyoroBarGraphStyleMixin {
  /// Lerp function.
  static MyoroBarGraphStyle lerp(MyoroBarGraphStyle? a, MyoroBarGraphStyle? b, double t) {
    return MyoroBarGraphStyle(
      border: Border.lerp(a?.border, b?.border, t),
      barColor: Color.lerp(a?.barColor, b?.barColor, t),
      barBorderRadius: BorderRadius.lerp(a?.barBorderRadius, b?.barBorderRadius, t),
      sideTitleTextStyle: TextStyle.lerp(a?.sideTitleTextStyle, b?.sideTitleTextStyle, t),
      sideTitleInterval: lerpDouble(a?.sideTitleInterval, b?.sideTitleInterval, t),
      verticalSideTitleReversedSize: lerpDouble(a?.verticalSideTitleReversedSize, b?.verticalSideTitleReversedSize, t),
      horizontalSideTitleReversedSize: lerpDouble(
        a?.horizontalSideTitleReversedSize,
        b?.horizontalSideTitleReversedSize,
        t,
      ),
    );
  }

  /// Default constructor.
  const MyoroBarGraphStyle({
    this.border,
    this.barColor,
    this.barBorderRadius,
    this.sideTitleTextStyle,
    this.sideTitleInterval,
    this.verticalSideTitleReversedSize,
    this.horizontalSideTitleReversedSize,
  });

  /// Fake constructor.
  factory MyoroBarGraphStyle.fake() {
    return MyoroBarGraphStyle(
      border: myoroNullableFake<Border>(),
      barColor: myoroNullableFake<Color>(),
      barBorderRadius: myoroNullableFake<BorderRadius>(),
      sideTitleTextStyle: myoroNullableFake<TextStyle>(),
      sideTitleInterval: myoroNullableFake<double>(),
      verticalSideTitleReversedSize: myoroNullableFake<double>(),
      horizontalSideTitleReversedSize: myoroNullableFake<double>(),
    );
  }

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
}
