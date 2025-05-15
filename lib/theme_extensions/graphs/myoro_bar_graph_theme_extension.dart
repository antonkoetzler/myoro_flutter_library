part of '../../widgets/graphs/myoro_bar_graph.dart';

/// [ThemeExtension] of [MyoroBarGraph].
@immutable
class MyoroBarGraphThemeExtension
    extends ThemeExtension<MyoroBarGraphThemeExtension> {
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

  const MyoroBarGraphThemeExtension({
    required this.border,
    required this.barColor,
    required this.barBorderRadius,
    required this.sideTitleTextStyle,
    required this.sideTitleInterval,
    required this.verticalSideTitleReversedSize,
    required this.horizontalSideTitleReversedSize,
  });

  MyoroBarGraphThemeExtension.fake()
    : border = myoroFake<Border>(),
      barColor = myoroFake<Color>(),
      barBorderRadius = myoroFake<BorderRadius>(),
      sideTitleTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      sideTitleInterval = faker.randomGenerator.decimal(),
      verticalSideTitleReversedSize = faker.randomGenerator.decimal(),
      horizontalSideTitleReversedSize = faker.randomGenerator.decimal();

  MyoroBarGraphThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) : border = Border.all(width: 2, color: colorScheme.onPrimary),
      barColor = colorScheme.onPrimary,
      barBorderRadius = BorderRadius.zero,
      sideTitleTextStyle = textTheme.bodySmall!,
      sideTitleInterval = 0.2,
      verticalSideTitleReversedSize = 48,
      horizontalSideTitleReversedSize = 22;

  @override
  MyoroBarGraphThemeExtension copyWith({
    Border? border,
    Color? barColor,
    BorderRadius? barBorderRadius,
    TextStyle? sideTitleTextStyle,
    double? sideTitleInterval,
    double? verticalSideTitleReversedSize,
    double? horizontalSideTitleReversedSize,
  }) {
    return MyoroBarGraphThemeExtension(
      border: border ?? this.border,
      barColor: barColor ?? this.barColor,
      barBorderRadius: barBorderRadius ?? this.barBorderRadius,
      sideTitleTextStyle: sideTitleTextStyle ?? this.sideTitleTextStyle,
      sideTitleInterval: sideTitleInterval ?? this.sideTitleInterval,
      verticalSideTitleReversedSize:
          verticalSideTitleReversedSize ?? this.verticalSideTitleReversedSize,
      horizontalSideTitleReversedSize:
          horizontalSideTitleReversedSize ??
          this.horizontalSideTitleReversedSize,
    );
  }

  @override
  MyoroBarGraphThemeExtension lerp(
    covariant ThemeExtension<MyoroBarGraphThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroBarGraphThemeExtension) return this;
    return copyWith(
      border: Border.lerp(border, other.border, t),
      barColor: Color.lerp(barColor, other.barColor, t),
      barBorderRadius: BorderRadius.lerp(
        barBorderRadius,
        other.barBorderRadius,
        t,
      ),
      sideTitleTextStyle: TextStyle.lerp(
        sideTitleTextStyle,
        other.sideTitleTextStyle,
        t,
      ),
      sideTitleInterval: lerpDouble(
        sideTitleInterval,
        other.sideTitleInterval,
        t,
      ),
      verticalSideTitleReversedSize: lerpDouble(
        verticalSideTitleReversedSize,
        other.verticalSideTitleReversedSize,
        t,
      ),
      horizontalSideTitleReversedSize: lerpDouble(
        horizontalSideTitleReversedSize,
        other.horizontalSideTitleReversedSize,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphThemeExtension &&
        other.runtimeType == runtimeType &&
        other.border == border &&
        other.barColor == barColor &&
        other.barBorderRadius == barBorderRadius &&
        other.sideTitleTextStyle == sideTitleTextStyle &&
        other.sideTitleInterval == sideTitleInterval &&
        other.verticalSideTitleReversedSize == verticalSideTitleReversedSize &&
        other.horizontalSideTitleReversedSize ==
            horizontalSideTitleReversedSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      border,
      barColor,
      barBorderRadius,
      sideTitleTextStyle,
      sideTitleInterval,
      verticalSideTitleReversedSize,
      horizontalSideTitleReversedSize,
    );
  }

  @override
  String toString() =>
      'MyoroBarGraphThemeExtension(\n'
      '  border: $border,\n'
      '  barColor: $barColor,\n'
      '  barBorderRadius: $barBorderRadius,\n'
      '  sideTitleTextStyle: $sideTitleTextStyle,\n'
      '  sideTitleInterval: $sideTitleInterval,\n'
      '  verticalSideTitleReversedSize: $verticalSideTitleReversedSize,\n'
      '  horizontalSideTitleReversedSize: $horizontalSideTitleReversedSize,\n'
      ');';
}
