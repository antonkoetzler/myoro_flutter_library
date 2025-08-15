// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroBarGraphThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphThemeExtension with _$MyoroBarGraphThemeExtensionMixin {}
/// ```
mixin _$MyoroBarGraphThemeExtensionMixin on ThemeExtension<MyoroBarGraphThemeExtension> {
  MyoroBarGraphThemeExtension get self => this as MyoroBarGraphThemeExtension;

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
      border: border ?? self.border,
      barColor: barColor ?? self.barColor,
      barBorderRadius: barBorderRadius ?? self.barBorderRadius,
      sideTitleTextStyle: sideTitleTextStyle ?? self.sideTitleTextStyle,
      sideTitleInterval: sideTitleInterval ?? self.sideTitleInterval,
      verticalSideTitleReversedSize: verticalSideTitleReversedSize ?? self.verticalSideTitleReversedSize,
      horizontalSideTitleReversedSize: horizontalSideTitleReversedSize ?? self.horizontalSideTitleReversedSize,
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
        other.verticalSideTitleReversedSize == self.verticalSideTitleReversedSize &&
        other.horizontalSideTitleReversedSize == self.horizontalSideTitleReversedSize;
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
