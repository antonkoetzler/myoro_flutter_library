// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tooltip_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTooltipStyle] once the code is generated.
///
/// ```dart
/// class MyoroTooltipStyle with _$MyoroTooltipStyleMixin {}
/// ```
mixin _$MyoroTooltipStyleMixin {
  MyoroTooltipStyle get self => this as MyoroTooltipStyle;

  MyoroTooltipStyle copyWith({EdgeInsets? margin, bool marginProvided = true}) {
    return MyoroTooltipStyle(
      margin: marginProvided ? (margin ?? self.margin) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTooltipStyle &&
        other.runtimeType == runtimeType &&
        other.margin == self.margin;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.margin]);
  }

  @override
  String toString() =>
      'MyoroTooltipStyle(\n'
      '  margin: ${self.margin},\n'
      ');';
}
