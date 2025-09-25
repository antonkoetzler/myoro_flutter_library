// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroBarGraphStyle] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphStyle with _$MyoroBarGraphStyleMixin {}
/// ```
mixin _$MyoroBarGraphStyleMixin {
  MyoroBarGraphStyle get self => this as MyoroBarGraphStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphStyle &&
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
      'MyoroBarGraphStyle(\n'
      '  border: ${self.border},\n'
      '  barColor: ${self.barColor},\n'
      '  barBorderRadius: ${self.barBorderRadius},\n'
      '  sideTitleTextStyle: ${self.sideTitleTextStyle},\n'
      '  sideTitleInterval: ${self.sideTitleInterval},\n'
      '  verticalSideTitleReversedSize: ${self.verticalSideTitleReversedSize},\n'
      '  horizontalSideTitleReversedSize: ${self.horizontalSideTitleReversedSize},\n'
      ');';
}
