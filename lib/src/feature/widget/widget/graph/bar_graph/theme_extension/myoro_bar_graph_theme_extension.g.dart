// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroBarGraphThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphThemeExtension with _$MyoroBarGraphThemeExtensionMixin {}
/// ```
mixin _$MyoroBarGraphThemeExtensionMixin
    on ThemeExtension<MyoroBarGraphThemeExtension> {
  MyoroBarGraphThemeExtension get self => this as MyoroBarGraphThemeExtension;

  @override
  MyoroBarGraphThemeExtension copyWith({
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
    return MyoroBarGraphThemeExtension(
      border: borderProvided ? (border ?? self.border) : null,
      barColor: barColorProvided ? (barColor ?? self.barColor) : null,
      barBorderRadius: barBorderRadiusProvided
          ? (barBorderRadius ?? self.barBorderRadius)
          : null,
      sideTitleTextStyle: sideTitleTextStyleProvided
          ? (sideTitleTextStyle ?? self.sideTitleTextStyle)
          : null,
      sideTitleInterval: sideTitleIntervalProvided
          ? (sideTitleInterval ?? self.sideTitleInterval)
          : null,
      verticalSideTitleReversedSize: verticalSideTitleReversedSizeProvided
          ? (verticalSideTitleReversedSize ??
                self.verticalSideTitleReversedSize)
          : null,
      horizontalSideTitleReversedSize: horizontalSideTitleReversedSizeProvided
          ? (horizontalSideTitleReversedSize ??
                self.horizontalSideTitleReversedSize)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphThemeExtension &&
        other.runtimeType == runtimeType &&
        other.border == self.border &&
        other.barColor == self.barColor &&
        other.barBorderRadius == self.barBorderRadius &&
        other.sideTitleTextStyle == self.sideTitleTextStyle &&
        other.sideTitleInterval == self.sideTitleInterval &&
        other.verticalSideTitleReversedSize ==
            self.verticalSideTitleReversedSize &&
        other.horizontalSideTitleReversedSize ==
            self.horizontalSideTitleReversedSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.border,
      self.barColor,
      self.barBorderRadius,
      self.sideTitleTextStyle,
      self.sideTitleInterval,
      self.verticalSideTitleReversedSize,
      self.horizontalSideTitleReversedSize,
    );
  }

  @override
  String toString() =>
      'MyoroBarGraphThemeExtension(\n'
      '  border: ${self.border},\n'
      '  barColor: ${self.barColor},\n'
      '  barBorderRadius: ${self.barBorderRadius},\n'
      '  sideTitleTextStyle: ${self.sideTitleTextStyle},\n'
      '  sideTitleInterval: ${self.sideTitleInterval},\n'
      '  verticalSideTitleReversedSize: ${self.verticalSideTitleReversedSize},\n'
      '  horizontalSideTitleReversedSize: ${self.horizontalSideTitleReversedSize},\n'
      ');';
}
