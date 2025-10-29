import 'package:faker/faker.dart' hide Color;
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
    /// Default constructor.
  const MyoroBarGraphThemeExtension({
    this.border,
    this.barColor,
    this.barBorderRadius,
    this.sideTitleTextStyle,
    this.sideTitleInterval,
    this.verticalSideTitleReversedSize,
    this.horizontalSideTitleReversedSize,
  });

  /// Fake constructor.
  MyoroBarGraphThemeExtension.fake()
    : border = myoroNullableFake<Border>(),
      barColor = myoroNullableFake<Color>(),
      barBorderRadius = myoroNullableFake<BorderRadius>(),
      sideTitleTextStyle = myoroNullableFake<TextStyle>(),
      sideTitleInterval = myoroNullableFake<double>(),
      verticalSideTitleReversedSize = myoroNullableFake<double>(),
      horizontalSideTitleReversedSize = myoroNullableFake<double>();

  MyoroBarGraphThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : border = Border.all(width: kMyoroBorderWidth * 2, color: colorScheme.onPrimary),
      barColor = colorScheme.onPrimary,
      barBorderRadius = BorderRadius.zero,
      sideTitleTextStyle = textTheme.bodySmall!,
      sideTitleInterval = 0.2,
      verticalSideTitleReversedSize = kMyoroMultiplier * 12,
      horizontalSideTitleReversedSize = kMyoroMultiplier * 5.5;

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
  MyoroBarGraphThemeExtension lerp(covariant MyoroBarGraphThemeExtension? other, double t) {
    if (other is! MyoroBarGraphThemeExtension) return this;
    final style = MyoroBarGraphStyle.lerp(this, other, t);
    return MyoroBarGraphThemeExtension(
      border: style.border,
      barColor: style.barColor,
      barBorderRadius: style.barBorderRadius,
      sideTitleTextStyle: style.sideTitleTextStyle,
      sideTitleInterval: style.sideTitleInterval,
      verticalSideTitleReversedSize: style.verticalSideTitleReversedSize,
      horizontalSideTitleReversedSize: style.horizontalSideTitleReversedSize,
    );
  }
}
